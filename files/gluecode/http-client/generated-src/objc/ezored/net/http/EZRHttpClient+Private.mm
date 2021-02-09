// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from proj.djinni

#import "ezored/net/http/EZRHttpClient+Private.h"
#import "ezored/net/http/EZRHttpClient.h"
#import "djinni/objc/DJICppWrapperCache+Private.h"
#import "djinni/objc/DJIError.h"
#import "djinni/objc/DJIMarshal+Private.h"
#import "ezored/net/http/EZRHttpClientLogger+Private.h"
#import "ezored/net/http/EZRHttpClientPlatformService+Private.h"
#import "ezored/net/http/EZRHttpRequest+Private.h"
#import "ezored/net/http/EZRHttpResponse+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface EZRHttpClient ()

- (id)initWithCpp:(const std::shared_ptr<::ezored::net::http::HttpClient>&)cppRef;

@end

@implementation EZRHttpClient {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ezored::net::http::HttpClient>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ezored::net::http::HttpClient>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nullable EZRHttpClient *)shared {
    try {
        auto objcpp_result_ = ::ezored::net::http::HttpClient::shared();
        return ::djinni_generated::HttpClient::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setPlatformService:(nullable id<EZRHttpClientPlatformService>)ps {
    try {
        _cppRefHandle.get()->setPlatformService(::djinni_generated::HttpClientPlatformService::toCpp(ps));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable id<EZRHttpClientPlatformService>)getPlatformService {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getPlatformService();
        return ::djinni_generated::HttpClientPlatformService::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)hasPlatformService {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->hasPlatformService();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull EZRHttpResponse *)doRequest:(nonnull EZRHttpRequest *)request {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->doRequest(::djinni_generated::HttpRequest::toCpp(request));
        return ::djinni_generated::HttpResponse::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setLogger:(nullable EZRHttpClientLogger *)logger {
    try {
        _cppRefHandle.get()->setLogger(::djinni_generated::HttpClientLogger::toCpp(logger));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable EZRHttpClientLogger *)getLogger {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getLogger();
        return ::djinni_generated::HttpClientLogger::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)hasLogger {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->hasLogger();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto HttpClient::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto HttpClient::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<EZRHttpClient>(cpp);
}

}  // namespace djinni_generated

@end
