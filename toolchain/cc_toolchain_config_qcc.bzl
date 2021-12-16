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
            path = "/opt/qnx_sdp_7_1/qnx710/host/linux/x86_64/usr/bin/qcc",
        ),
        tool_path(
            name = "g++",
            path = "/opt/qnx_sdp_7_1/qnx710/host/linux/x86_64/usr/bin/q++",
        ),
        tool_path(
            name = "ld",
            path = "/opt/qnx_sdp_7_1/qnx710/host/linux/x86_64/usr/bin/q++",
        ),
        tool_path(
            name = "ar",
            path = "unknown",
        ),
        tool_path(
            name = "cpp",
            path = "unknown",
        ),
        tool_path(
            name = "gcov",
            path = "unknown",
        ),
        tool_path(
            name = "nm",
            path = "unknown",
        ),
        tool_path(
            name = "objdump",
            path = "unknown",
        ),
        tool_path(
            name = "strip",
            path = "unknown",
        ),
    ]

    features = [ # NEW
        feature(
            name = "unfiltered_compile_flags",
            flag_sets = [
                flag_set(
                    actions = [
		            ACTION_NAMES.preprocess_assemble,
		            ACTION_NAMES.c_compile,
		            ACTION_NAMES.cpp_compile,
		            ACTION_NAMES.cpp_header_parsing,
		            ACTION_NAMES.cpp_module_compile,
		            ACTION_NAMES.cpp_module_codegen,
                    ],
                    flag_groups = [
                        flag_group(
                            flags = [
                                "-Vgcc_ntox86_64_cxx",
                            ],
                        ),
                    ],
                ),
            ],
        ),
        feature(
            name = "dependency_file",
            enabled = True,
		flag_sets = [
		    flag_set(
		        actions = [
		            ACTION_NAMES.preprocess_assemble,
		            ACTION_NAMES.c_compile,
		            ACTION_NAMES.cpp_compile,
		            ACTION_NAMES.cpp_header_parsing,
		            ACTION_NAMES.cpp_module_compile,
		            ACTION_NAMES.cpp_module_codegen,
		        ],
		        flag_groups = [
		            flag_group(
		                flags = ["-Wp,-MMD,%{dependency_file}", "-MT,%{output_file}"],
		                expand_if_available = "dependency_file",
		            ),
		        ],
		    ),
		],
        ),
        
    ]

    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
        features = features, # NEW
        cxx_builtin_include_directories = [
            "/opt/qnx_sdp_7_1/qnx710/host/usr/include/",
            "/opt/qnx_sdp_7_1/qnx710/target/qnx7/usr/include/"
        ],
        toolchain_identifier = "local",
        host_system_name = "local",
        target_system_name = "local",
        target_cpu = "arm",
        target_libc = "unknown",
        compiler = "qcc",
        abi_version = "unknown",
        abi_libc_version = "unknown",
        tool_paths = tool_paths,
    )

cc_toolchain_config = rule(
    implementation = _impl,
    attrs = {},
    provides = [CcToolchainConfigInfo],
)
