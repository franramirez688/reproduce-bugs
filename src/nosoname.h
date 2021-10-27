#pragma once

#ifdef WIN32
  #define nosoname_EXPORT __declspec(dllexport)
#else
  #define nosoname_EXPORT
#endif

nosoname_EXPORT void nosoname();
