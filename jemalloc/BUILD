
filegroup(
    name = "jemalloc_unix_headers",
    srcs = glob(["include_unix/**/*.h"]),
    visibility = ["//visibility:public"],
)

# https://docs.bazel.build/versions/master/be/c-cpp.html#cc_library
cc_library(
    name = "jemalloc_unix_lib",
    hdrs = [":jemalloc_unix_headers"],
    includes = ["include_unix"],
    visibility = ["//visibility:public"],
)