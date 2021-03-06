// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from proj.djinni

#pragma once

#include "djinni/jni/djinni_support.hpp"
#include "ezored/helpers/SharedDataHelper.hpp"

namespace djinni_generated {

class EZRHelpersSharedDataHelper final : ::djinni::JniInterface<::ezored::helpers::SharedDataHelper, EZRHelpersSharedDataHelper> {
public:
    using CppType = std::shared_ptr<::ezored::helpers::SharedDataHelper>;
    using CppOptType = std::shared_ptr<::ezored::helpers::SharedDataHelper>;
    using JniType = jobject;

    using Boxed = EZRHelpersSharedDataHelper;

    ~EZRHelpersSharedDataHelper();

    static CppType toCpp(JNIEnv* jniEnv, JniType j) { return ::djinni::JniClass<EZRHelpersSharedDataHelper>::get()._fromJava(jniEnv, j); }
    static ::djinni::LocalRef<JniType> fromCppOpt(JNIEnv* jniEnv, const CppOptType& c) { return {jniEnv, ::djinni::JniClass<EZRHelpersSharedDataHelper>::get()._toJava(jniEnv, c)}; }
    static ::djinni::LocalRef<JniType> fromCpp(JNIEnv* jniEnv, const CppType& c) { return fromCppOpt(jniEnv, c); }

private:
    EZRHelpersSharedDataHelper();
    friend ::djinni::JniClass<EZRHelpersSharedDataHelper>;
    friend ::djinni::JniInterface<::ezored::helpers::SharedDataHelper, EZRHelpersSharedDataHelper>;

};

}  // namespace djinni_generated
