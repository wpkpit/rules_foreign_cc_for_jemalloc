load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Rule repository
http_archive(
   name = "rules_foreign_cc",
   sha256 = "1df78c7d7eed2dc21b8b325a2853c31933a81e7b780f9a59a5d078be9008b13a",
   strip_prefix = "rules_foreign_cc-0.7.0",
   url = "https://github.com/bazelbuild/rules_foreign_cc/archive/refs/tags/0.7.0.tar.gz",
)

load("@rules_foreign_cc//foreign_cc:repositories.bzl", "rules_foreign_cc_dependencies")

# Workspace initialization function; includes repositories needed by rules_foreign_cc,
# and creates some utilities for the host operating system
rules_foreign_cc_dependencies()

# jemalloc source code repository
http_archive(
   name = "jemalloc",
   build_file = "//jemalloc:BUILD.jemalloc.bazel",
   sha256 = "34330e5ce276099e2e8950d9335db5a875689a4c6a56751ef3b1d8c537f887f6",
   strip_prefix = "jemalloc-5.2.1",
   urls = [
       "https://github.com/jemalloc/jemalloc/releases/download/5.2.1/jemalloc-5.2.1.tar.bz2",
   ],
)

