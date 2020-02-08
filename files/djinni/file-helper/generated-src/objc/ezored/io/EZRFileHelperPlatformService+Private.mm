// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from proj.djinni

#import "ezored/io/EZRFileHelperPlatformService+Private.h"
#import "ezored/io/EZRFileHelperPlatformService.h"
#import "DJIMarshal+Private.h"
#import "DJIObjcWrapperCache+Private.h"
#include <stdexcept>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

namespace djinni_generated {

class FileHelperPlatformService::ObjcProxy final
: public ::ezored::io::FileHelperPlatformService
, private ::djinni::ObjcProxyBase<ObjcType>
{
    friend class ::djinni_generated::FileHelperPlatformService;
public:
    using ObjcProxyBase::ObjcProxyBase;
    bool createFile(const std::string & c_path) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() createFile:(::djinni::String::fromCpp(c_path))];
            return ::djinni::Bool::toCpp(objcpp_result_);
        }
    }
    bool createFileWithStringContent(const std::string & c_path, const std::string & c_content) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() createFileWithStringContent:(::djinni::String::fromCpp(c_path))
                                                                                                content:(::djinni::String::fromCpp(c_content))];
            return ::djinni::Bool::toCpp(objcpp_result_);
        }
    }
    bool createFileWithBinaryContent(const std::string & c_path, const std::vector<uint8_t> & c_content) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() createFileWithBinaryContent:(::djinni::String::fromCpp(c_path))
                                                                                                content:(::djinni::Binary::fromCpp(c_content))];
            return ::djinni::Bool::toCpp(objcpp_result_);
        }
    }
    bool createDir(const std::string & c_path) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() createDir:(::djinni::String::fromCpp(c_path))];
            return ::djinni::Bool::toCpp(objcpp_result_);
        }
    }
    std::vector<std::string> listFiles(const std::string & c_path) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() listFiles:(::djinni::String::fromCpp(c_path))];
            return ::djinni::List<::djinni::String>::toCpp(objcpp_result_);
        }
    }
    std::string getExtension(const std::string & c_path) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() getExtension:(::djinni::String::fromCpp(c_path))];
            return ::djinni::String::toCpp(objcpp_result_);
        }
    }
    std::string getFilename(const std::string & c_path) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() getFilename:(::djinni::String::fromCpp(c_path))];
            return ::djinni::String::toCpp(objcpp_result_);
        }
    }
    std::string getBasename(const std::string & c_path) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() getBasename:(::djinni::String::fromCpp(c_path))];
            return ::djinni::String::toCpp(objcpp_result_);
        }
    }
    std::string getFilenameFromUrl(const std::string & c_url) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() getFilenameFromUrl:(::djinni::String::fromCpp(c_url))];
            return ::djinni::String::toCpp(objcpp_result_);
        }
    }
    std::string getBasenameFromUrl(const std::string & c_url) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() getBasenameFromUrl:(::djinni::String::fromCpp(c_url))];
            return ::djinni::String::toCpp(objcpp_result_);
        }
    }
    bool removeFile(const std::string & c_path) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() removeFile:(::djinni::String::fromCpp(c_path))];
            return ::djinni::Bool::toCpp(objcpp_result_);
        }
    }
    bool removeDir(const std::string & c_path) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() removeDir:(::djinni::String::fromCpp(c_path))];
            return ::djinni::Bool::toCpp(objcpp_result_);
        }
    }
    bool isDir(const std::string & c_path) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() isDir:(::djinni::String::fromCpp(c_path))];
            return ::djinni::Bool::toCpp(objcpp_result_);
        }
    }
    bool isFile(const std::string & c_path) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() isFile:(::djinni::String::fromCpp(c_path))];
            return ::djinni::Bool::toCpp(objcpp_result_);
        }
    }
    int64_t getFileSize(const std::string & c_path) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() getFileSize:(::djinni::String::fromCpp(c_path))];
            return ::djinni::I64::toCpp(objcpp_result_);
        }
    }
    bool copyFile(const std::string & c_from, const std::string & c_to) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() copyFile:(::djinni::String::fromCpp(c_from))
                                                                                  to:(::djinni::String::fromCpp(c_to))];
            return ::djinni::Bool::toCpp(objcpp_result_);
        }
    }
    bool moveFile(const std::string & c_from, const std::string & c_to) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() moveFile:(::djinni::String::fromCpp(c_from))
                                                                                  to:(::djinni::String::fromCpp(c_to))];
            return ::djinni::Bool::toCpp(objcpp_result_);
        }
    }
    std::string join(const std::string & c_first, const std::string & c_second) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() join:(::djinni::String::fromCpp(c_first))
                                                                          second:(::djinni::String::fromCpp(c_second))];
            return ::djinni::String::toCpp(objcpp_result_);
        }
    }
    std::string getFileContentAsString(const std::string & c_path) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() getFileContentAsString:(::djinni::String::fromCpp(c_path))];
            return ::djinni::String::toCpp(objcpp_result_);
        }
    }
    std::vector<uint8_t> getFileContentAsBinary(const std::string & c_path) override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() getFileContentAsBinary:(::djinni::String::fromCpp(c_path))];
            return ::djinni::Binary::toCpp(objcpp_result_);
        }
    }
    std::string getHomeDir() override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() getHomeDir];
            return ::djinni::String::toCpp(objcpp_result_);
        }
    }
};

}  // namespace djinni_generated

namespace djinni_generated {

auto FileHelperPlatformService::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return ::djinni::get_objc_proxy<ObjcProxy>(objc);
}

auto FileHelperPlatformService::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return dynamic_cast<ObjcProxy&>(*cpp).djinni_private_get_proxied_objc_object();
}

}  // namespace djinni_generated
