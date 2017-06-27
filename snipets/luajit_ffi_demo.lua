local ffi = require("ffi")
ffi.cdef[[int printf(const char* fmt, ...);]]
ffi.C.printf("hello world\n", "wiki")