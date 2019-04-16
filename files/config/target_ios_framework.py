def run(proj_path, target_name, params):
    return {
        'project_name': 'Ezored',
        'build_types': ['Debug', 'Release'],
        'archs': [
            {
                'arch': 'armv7',
                'conan_arch': 'armv7',
                'conan_profile': 'ezored_ios_framework_profile',
                'min_version': '9.0',
                'enable_bitcode': True,
            },
            {
                'arch': 'armv7s',
                'conan_arch': 'armv7s',
                'conan_profile': 'ezored_ios_framework_profile',
                'min_version': '9.0',
                'enable_bitcode': True,
            },
            {
                'arch': 'arm64',
                'conan_arch': 'armv8',
                'conan_profile': 'ezored_ios_framework_profile',
                'min_version': '9.0',
                'enable_bitcode': True,
            },
            {
                'arch': 'arm64e',
                'conan_arch': 'armv8.3',
                'conan_profile': 'ezored_ios_framework_profile',
                'min_version': '9.0',
                'enable_bitcode': True,
            },
            {
                'arch': 'x86_64',
                'conan_arch': 'x86_64',
                'conan_profile': 'ezored_ios_framework_profile',
                'min_version': '9.0',
                'enable_bitcode': True,
            },
        ],
        'install_headers': [
            {
                'type': 'dir',
                'path': 'files/djinni/app-domain/generated-src/objc',
            },
            {
                'type': 'dir',
                'path': 'files/djinni/app-enums/generated-src/objc',
            },
            {
                'type': 'dir',
                'path': 'files/djinni/app-core/generated-src/objc',
            },
            {
                'type': 'dir',
                'path': 'files/djinni/app-data-services/generated-src/objc',
            },
            {
                'type': 'dir',
                'path': 'files/djinni/app-system-services/generated-src/objc',
            },
            {
                'type': 'dir',
                'path': 'files/djinni/app-helpers/generated-src/objc',
            },
            {
                'type': 'dir',
                'path': 'files/djinni/datetime/generated-src/objc',
            },
            {
                'type': 'dir',
                'path': 'files/djinni/file-helper/generated-src/objc',
            },
            {
                'type': 'dir',
                'path': 'files/djinni/http-client/generated-src/objc',
            },
            {
                'type': 'dir',
                'path': 'files/djinni/shared-data/generated-src/objc',
            },
            {
                'type': 'dir',
                'path': 'files/djinni/logger/generated-src/objc',
            },
            {
                'type': 'dir',
                'path': 'files/djinni/string-helper/generated-src/objc',
            },
            {
                'type': 'dir',
                'path': 'files/src/file-helper/objc',
            },
            {
                'type': 'dir',
                'path': 'files/src/logger/objc',
            },
            {
                'type': 'dir',
                'path': 'files/src/shared-data/objc',
            },
        ]
    }
