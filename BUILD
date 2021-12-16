cc_binary(
    name = "main",
    srcs = ["src/main.c"],
    deps = ["@jemalloc//:jemalloc"],
    copts = ["--verbose", "-Wall", "-Werror", "-fno-builtin-malloc"],
    linkopts = [
        "--verbose",
#        "-Llib/",
        "-lpthread",
        "-ldl",
#        "-ljemalloc",
    ],
#    data = ["@jemalloc//:jemalloc/lib/libjemalloc.so"],
    visibility = ["//visibility:public"],
)
