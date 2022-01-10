cc_binary(
    name = "main",
    srcs = ["src/main.cpp"],
    deps = ["@jemalloc//:jemalloc"],
    copts = ["-Wall", "-Werror", "-fno-builtin-malloc"],
    linkopts = [
        "-lpthread",
        "-ldl",
    ],

    linkstatic=False,
    visibility = ["//visibility:public"],
)
