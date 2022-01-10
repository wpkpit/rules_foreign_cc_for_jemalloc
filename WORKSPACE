workspace(name = "ddad")
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
   patches = [
      "//patches:BUILD.jemalloc.patch", 
   ],
   patch_args = ["-p1"],
)

http_archive(
  name = "com_google_googletest",
  urls = ["https://github.com/google/googletest/archive/609281088cfefc76f9d0ce82e1ff6c30cc3591e5.zip"],
  strip_prefix = "googletest-609281088cfefc76f9d0ce82e1ff6c30cc3591e5",
)
http_archive(
    name = "com_github_gflags_gflags",
    urls = ["https://github.com/gflags/gflags/archive/refs/tags/v2.2.2.tar.gz"],
    sha256 = "34af2f15cf7367513b352bdcd2493ab14ce43692d2dcd9dfc499492966c64dcf",
    strip_prefix = "gflags-2.2.2",
)