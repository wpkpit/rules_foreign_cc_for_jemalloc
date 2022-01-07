
filegroup(
    name = "jemalloc_unix_header_files",
    srcs = glob(["unix_headers/**/*.h"]),
    visibility = ["//visibility:public"],
)

cc_library(
    name = "jemalloc_unix_headers",
    hdrs = [":jemalloc_unix_header_files"],
    includes = ["unix_headers"],
    visibility = ["//visibility:public"],
)