"""Build library"""

import os

from files.modules import const
from files.modules import file
from files.modules import log
from files.modules import runner
from files.modules import util
from files.config import target_ios_framework as config


# -----------------------------------------------------------------------------
def run(params):
    proj_path = params["proj_path"]
    target_name = params["target_name"]
    target_config = config.run(proj_path, target_name, params)

    archs = target_config["archs"]
    build_types = target_config["build_types"]
    install_headers = target_config["install_headers"]
    param_dry_run = util.list_has_key(params["args"], "--dry-run")

    if param_dry_run:
        log.info("Running in dry mode...")

    if archs and len(archs) > 0:
        for arch in archs:
            for build_type in build_types:
                log.info(
                    "Building for: {0}/{1}...".format(arch["conan_arch"], build_type)
                )

                # conan build
                build_dir = os.path.join(
                    proj_path,
                    const.DIR_NAME_BUILD,
                    target_name,
                    build_type,
                    arch["group"],
                    arch["conan_arch"],
                    const.DIR_NAME_BUILD_TARGET,
                )

                clean_build_dir = True

                if param_dry_run and os.path.isdir(build_dir):
                    clean_build_dir = False

                if clean_build_dir:
                    file.remove_dir(build_dir)
                    file.create_dir(build_dir)

                run_args = [
                    "conan",
                    "build",
                    os.path.join(
                        proj_path,
                        const.DIR_NAME_FILES,
                        const.DIR_NAME_FILES_TARGETS,
                        target_name,
                        const.DIR_NAME_FILES_TARGET_CONAN,
                        const.DIR_NAME_FILES_TARGET_CONAN_RECIPE,
                        const.FILE_NAME_FILES_TARGET_CONAN_RECIPE_CONANFILE_PY,
                    ),
                    "--source-folder",
                    os.path.join(
                        proj_path,
                        const.DIR_NAME_FILES,
                        const.DIR_NAME_FILES_TARGETS,
                        target_name,
                        const.DIR_NAME_FILES_TARGET_CMAKE,
                    ),
                    "--build-folder",
                    os.path.join(
                        proj_path,
                        const.DIR_NAME_BUILD,
                        target_name,
                        build_type,
                        arch["group"],
                        arch["conan_arch"],
                        const.DIR_NAME_BUILD_TARGET,
                    ),
                    "--install-folder",
                    os.path.join(
                        proj_path,
                        const.DIR_NAME_BUILD,
                        target_name,
                        build_type,
                        arch["group"],
                        arch["conan_arch"],
                        const.DIR_NAME_BUILD_CONAN,
                    ),
                ]

                runner.run(run_args, build_dir)

                # find correct info plist file
                plist_path1 = os.path.join(
                    proj_path,
                    const.DIR_NAME_BUILD,
                    target_name,
                    build_type,
                    arch["group"],
                    arch["conan_arch"],
                    const.DIR_NAME_BUILD_TARGET,
                    "lib",
                    "{0}.framework".format(target_config["project_name"]),
                    "Info.plist",
                )

                plist_path2 = os.path.join(
                    proj_path,
                    const.DIR_NAME_BUILD,
                    target_name,
                    build_type,
                    arch["group"],
                    arch["conan_arch"],
                    const.DIR_NAME_BUILD_TARGET,
                    "lib",
                    "{0}.framework".format(target_config["project_name"]),
                    "Versions",
                    "Current",
                    "Resources",
                    "Info.plist",
                )

                plist_path = ""

                if os.path.exists(plist_path1):
                    plist_path = plist_path1

                if os.path.exists(plist_path2):
                    plist_path = plist_path2

                # add minimum version inside plist
                runner.run(
                    [
                        "plutil",
                        "-replace",
                        "MinimumOSVersion",
                        "-string",
                        arch["min_version"],
                        plist_path,
                    ],
                    proj_path,
                )

                # add supported platform inside plist
                runner.run(
                    [
                        "plutil",
                        "-replace",
                        "CFBundleSupportedPlatforms",
                        "-json",
                        '[ "{0}" ]'.format(arch["supported_platform"]),
                        plist_path,
                    ],
                    proj_path,
                )

                # headers
                dist_headers_dir = os.path.join(
                    proj_path,
                    const.DIR_NAME_BUILD,
                    target_name,
                    build_type,
                    arch["group"],
                    arch["conan_arch"],
                    const.DIR_NAME_BUILD_TARGET,
                    "lib",
                    "{0}.framework".format(target_config["project_name"]),
                    "Headers",
                )

                file.create_dir(dist_headers_dir)

                if install_headers:
                    for header in install_headers:
                        source_header_dir = os.path.join(proj_path, header["path"])

                        if header["type"] == "dir":
                            file.copy_dir(
                                source_header_dir,
                                dist_headers_dir,
                                ignore_file=_header_ignore_list,
                                symlinks=True,
                            )
                        else:
                            log.error(
                                "Invalid type for install header list for {0}".format(
                                    target_name
                                )
                            )

                # modules
                support_modules_dir = os.path.join(
                    proj_path,
                    const.DIR_NAME_FILES,
                    const.DIR_NAME_FILES_TARGETS,
                    target_name,
                    "support",
                    "modules",
                )

                modules_dir = os.path.join(
                    proj_path,
                    const.DIR_NAME_BUILD,
                    target_name,
                    build_type,
                    arch["group"],
                    arch["conan_arch"],
                    const.DIR_NAME_BUILD_TARGET,
                    "lib",
                    "{0}.framework".format(target_config["project_name"]),
                    "Modules",
                )

                file.remove_dir(modules_dir)
                file.create_dir(modules_dir)

                file.copy_file(
                    os.path.join(support_modules_dir, "module.modulemap"),
                    os.path.join(modules_dir, "module.modulemap"),
                )

                # umbrella header
                build_headers_dir = os.path.join(
                    proj_path,
                    const.DIR_NAME_BUILD,
                    target_name,
                    build_type,
                    arch["group"],
                    arch["conan_arch"],
                    const.DIR_NAME_BUILD_TARGET,
                    "lib",
                    "{0}.framework".format(target_config["project_name"]),
                    "Headers",
                )

                header_files = file.find_files(build_headers_dir, "*.h")

                content = file.read_file(
                    os.path.join(support_modules_dir, "umbrella-header.h")
                )

                for header_file in header_files:
                    header_file = header_file.replace(build_headers_dir + "/", "")

                    content = content + '#import "{0}"\n'.format(header_file)

                if len(content) > 0:
                    umbrella_file = os.path.join(
                        build_headers_dir, target_config["umbrella_header"]
                    )

                    file.copy_file(
                        os.path.join(support_modules_dir, "umbrella-header.h"),
                        umbrella_file,
                    )

                    file.write_to_file(
                        os.path.dirname(umbrella_file),
                        os.path.basename(umbrella_file),
                        content,
                    )
                else:
                    log.error(
                        "{0}".format(
                            "File not generated because framework headers is empty"
                        )
                    )

        log.ok()
    else:
        log.error('Arch list for "{0}" is invalid or empty'.format(target_name))


# -----------------------------------------------------------------------------
def _header_ignore_list(filename):
    return not filename.lower().endswith(".h") or "+Private" in filename
