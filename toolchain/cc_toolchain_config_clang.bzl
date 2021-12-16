load("@bazel_tools//tools/build_defs/cc:action_names.bzl", "ACTION_NAMES")

load(
    "@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl",
    "feature",
    "flag_group",
    "flag_set",
    "tool_path",
)

all_link_actions = [ # NEW
    ACTION_NAMES.cpp_link_executable,
    ACTION_NAMES.cpp_link_dynamic_library,
    ACTION_NAMES.cpp_link_nodeps_dynamic_library,
]

def _impl(ctx):
    tool_paths = [
        tool_path(
            name = "gcc",
            path = "/usr/bin/clang-11",
        ),
        tool_path(
            name = "g++",
            path = "/usr/bin/clang++-11",
        ),
        tool_path(
            name = "ld",
            path = "/usr/bin/ld",
        ),
        tool_path(
            name = "ar",
            path = "/usr/bin/ar",
        ),
        tool_path(
            name = "cpp",
            path = "/usr/bin/clang-cpp-11",
        ),
        tool_path(
            name = "gcov",
            path = "gcov",
        ),
        tool_path(
            name = "nm",
            path = "nm",
        ),
        tool_path(
            name = "objdump",
            path = "objdump",
        ),
        tool_path(
            name = "strip",
            path = "strip",
        ),
    ]

    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
        toolchain_identifier = "local",
        cxx_builtin_include_directories = [
             "/usr/local/include",
             "/usr/lib/llvm-11/lib/clang/11.0.0/include",
             "/usr/include/x86_64-linux-gnu",
             "/usr/include",
        ],
        host_system_name = "local",
        target_system_name = "local",
        target_cpu = "k8",
        target_libc = "unknown",
        compiler = "clang",
        abi_version = "unknown",
        abi_libc_version = "unknown",
        tool_paths = tool_paths, # NEW
    )

cc_toolchain_config = rule(
    implementation = _impl,
    attrs = {},
    provides = [CcToolchainConfigInfo],
)
