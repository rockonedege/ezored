// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from proj.djinni

#import "ezored/data/EZRSharedData+Private.h"
#import "ezored/data/EZRSharedData.h"
#import "djinni/objc/DJICppWrapperCache+Private.h"
#import "djinni/objc/DJIError.h"
#import "djinni/objc/DJIMarshal+Private.h"
#import "ezored/data/EZRSharedDataPlatformService+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface EZRSharedData ()

- (id)initWithCpp:(const std::shared_ptr<::ezored::data::SharedData>&)cppRef;

@end

@implementation EZRSharedData {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ezored::data::SharedData>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ezored::data::SharedData>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nullable EZRSharedData *)shared {
    try {
        auto objcpp_result_ = ::ezored::data::SharedData::shared();
        return ::djinni_generated::SharedData::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setPlatformService:(nullable id<EZRSharedDataPlatformService>)ps {
    try {
        _cppRefHandle.get()->setPlatformService(::djinni_generated::SharedDataPlatformService::toCpp(ps));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable id<EZRSharedDataPlatformService>)getPlatformService {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getPlatformService();
        return ::djinni_generated::SharedDataPlatformService::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)hasPlatformService {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->hasPlatformService();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setString:(nonnull NSString *)groupName
              key:(nonnull NSString *)key
            value:(nonnull NSString *)value {
    try {
        _cppRefHandle.get()->setString(::djinni::String::toCpp(groupName),
                                       ::djinni::String::toCpp(key),
                                       ::djinni::String::toCpp(value));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setInteger:(nonnull NSString *)groupName
               key:(nonnull NSString *)key
             value:(int32_t)value {
    try {
        _cppRefHandle.get()->setInteger(::djinni::String::toCpp(groupName),
                                        ::djinni::String::toCpp(key),
                                        ::djinni::I32::toCpp(value));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setLong:(nonnull NSString *)groupName
            key:(nonnull NSString *)key
          value:(int64_t)value {
    try {
        _cppRefHandle.get()->setLong(::djinni::String::toCpp(groupName),
                                     ::djinni::String::toCpp(key),
                                     ::djinni::I64::toCpp(value));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setBool:(nonnull NSString *)groupName
            key:(nonnull NSString *)key
          value:(BOOL)value {
    try {
        _cppRefHandle.get()->setBool(::djinni::String::toCpp(groupName),
                                     ::djinni::String::toCpp(key),
                                     ::djinni::Bool::toCpp(value));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setFloat:(nonnull NSString *)groupName
             key:(nonnull NSString *)key
           value:(float)value {
    try {
        _cppRefHandle.get()->setFloat(::djinni::String::toCpp(groupName),
                                      ::djinni::String::toCpp(key),
                                      ::djinni::F32::toCpp(value));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setDouble:(nonnull NSString *)groupName
              key:(nonnull NSString *)key
            value:(double)value {
    try {
        _cppRefHandle.get()->setDouble(::djinni::String::toCpp(groupName),
                                       ::djinni::String::toCpp(key),
                                       ::djinni::F64::toCpp(value));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)getString:(nonnull NSString *)groupName
                            key:(nonnull NSString *)key {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getString(::djinni::String::toCpp(groupName),
                                                             ::djinni::String::toCpp(key));
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)getInteger:(nonnull NSString *)groupName
                  key:(nonnull NSString *)key {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getInteger(::djinni::String::toCpp(groupName),
                                                              ::djinni::String::toCpp(key));
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int64_t)getLong:(nonnull NSString *)groupName
               key:(nonnull NSString *)key {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getLong(::djinni::String::toCpp(groupName),
                                                           ::djinni::String::toCpp(key));
        return ::djinni::I64::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)getBool:(nonnull NSString *)groupName
            key:(nonnull NSString *)key {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getBool(::djinni::String::toCpp(groupName),
                                                           ::djinni::String::toCpp(key));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (float)getFloat:(nonnull NSString *)groupName
              key:(nonnull NSString *)key {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getFloat(::djinni::String::toCpp(groupName),
                                                            ::djinni::String::toCpp(key));
        return ::djinni::F32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (double)getDouble:(nonnull NSString *)groupName
                key:(nonnull NSString *)key {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getDouble(::djinni::String::toCpp(groupName),
                                                             ::djinni::String::toCpp(key));
        return ::djinni::F64::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)getStringWithDefaultValue:(nonnull NSString *)groupName
                                            key:(nonnull NSString *)key
                                   defaultValue:(nonnull NSString *)defaultValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getStringWithDefaultValue(::djinni::String::toCpp(groupName),
                                                                             ::djinni::String::toCpp(key),
                                                                             ::djinni::String::toCpp(defaultValue));
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)getIntegerWithDefaultValue:(nonnull NSString *)groupName
                                  key:(nonnull NSString *)key
                         defaultValue:(int32_t)defaultValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getIntegerWithDefaultValue(::djinni::String::toCpp(groupName),
                                                                              ::djinni::String::toCpp(key),
                                                                              ::djinni::I32::toCpp(defaultValue));
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int64_t)getLongWithDefaultValue:(nonnull NSString *)groupName
                               key:(nonnull NSString *)key
                      defaultValue:(int64_t)defaultValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getLongWithDefaultValue(::djinni::String::toCpp(groupName),
                                                                           ::djinni::String::toCpp(key),
                                                                           ::djinni::I64::toCpp(defaultValue));
        return ::djinni::I64::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)getBoolWithDefaultValue:(nonnull NSString *)groupName
                            key:(nonnull NSString *)key
                   defaultValue:(BOOL)defaultValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getBoolWithDefaultValue(::djinni::String::toCpp(groupName),
                                                                           ::djinni::String::toCpp(key),
                                                                           ::djinni::Bool::toCpp(defaultValue));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (float)getFloatWithDefaultValue:(nonnull NSString *)groupName
                              key:(nonnull NSString *)key
                     defaultValue:(float)defaultValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getFloatWithDefaultValue(::djinni::String::toCpp(groupName),
                                                                            ::djinni::String::toCpp(key),
                                                                            ::djinni::F32::toCpp(defaultValue));
        return ::djinni::F32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (double)getDoubleWithDefaultValue:(nonnull NSString *)groupName
                                key:(nonnull NSString *)key
                       defaultValue:(double)defaultValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getDoubleWithDefaultValue(::djinni::String::toCpp(groupName),
                                                                             ::djinni::String::toCpp(key),
                                                                             ::djinni::F64::toCpp(defaultValue));
        return ::djinni::F64::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)has:(nonnull NSString *)groupName
        key:(nonnull NSString *)key {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->has(::djinni::String::toCpp(groupName),
                                                       ::djinni::String::toCpp(key));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)remove:(nonnull NSString *)groupName
           key:(nonnull NSString *)key {
    try {
        _cppRefHandle.get()->remove(::djinni::String::toCpp(groupName),
                                    ::djinni::String::toCpp(key));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)clear:(nonnull NSString *)groupName {
    try {
        _cppRefHandle.get()->clear(::djinni::String::toCpp(groupName));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto SharedData::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto SharedData::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<EZRSharedData>(cpp);
}

}  // namespace djinni_generated

@end
