// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from proj.djinni

#include "com/ezored/helpers/EZRHelpersEnvironmentHelper.hpp"  // my header
#include "djinni/jni/Marshal.hpp"

namespace djinni_generated {

EZRHelpersEnvironmentHelper::EZRHelpersEnvironmentHelper() : ::djinni::JniInterface<::ezored::helpers::EnvironmentHelper, EZRHelpersEnvironmentHelper>("com/ezored/helpers/EnvironmentHelper$CppProxy") {}

EZRHelpersEnvironmentHelper::~EZRHelpersEnvironmentHelper() = default;


CJNIEXPORT void JNICALL Java_com_ezored_helpers_EnvironmentHelper_00024CppProxy_nativeDestroy(JNIEnv* jniEnv, jobject /*this*/, jlong nativeRef)
{
    try {
        DJINNI_FUNCTION_PROLOGUE1(jniEnv, nativeRef);
        delete reinterpret_cast<::djinni::CppProxyHandle<::ezored::helpers::EnvironmentHelper>*>(nativeRef);
    } JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, )
}

CJNIEXPORT jstring JNICALL Java_com_ezored_helpers_EnvironmentHelper_00024CppProxy_getSecretKey(JNIEnv* jniEnv, jobject /*this*/)
{
    try {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::ezored::helpers::EnvironmentHelper::getSecretKey();
        return ::djinni::release(::djinni::String::fromCpp(jniEnv, r));
    } JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

}  // namespace djinni_generated
