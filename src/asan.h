#pragma once

#ifdef WIN32
  #define asan_EXPORT __declspec(dllexport)
#else
  #define asan_EXPORT
#endif

asan_EXPORT void asan();
