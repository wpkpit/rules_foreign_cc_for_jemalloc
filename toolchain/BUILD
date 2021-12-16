package(default_visibility = ["//visibility:public"])

load(":cc_toolchain_config_clang.bzl", "cc_toolchain_config")

cc_toolchain_config(name = "clang_toolchain_config")

filegroup(name = "empty")

cc_toolchain(
    name = "clang_toolchain",
    toolchain_identifier = "clang-toolchain",
    toolchain_config = ":clang_toolchain_config",
    all_files = ":empty",
    compiler_files = ":empty",
    dwp_files = ":empty",
    linker_files = ":empty",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 0,
)


cc_toolchain_suite(
    name = "clang_suite",
    toolchains = {
        "k8": ":clang_toolchain",
    },
)
