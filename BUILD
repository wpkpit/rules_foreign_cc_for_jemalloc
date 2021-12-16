cc_binary(
    name = "main",
    srcs = ["src/main.c"],
    deps = ["@jemalloc//:jemalloc"],
    copts = ["-Wall", "-Werror", "-fno-builtin-malloc"],
    linkopts = [
        "-lpthread",
        "-ldl",
    ],
    visibility = ["//visibility:public"],
)
