# Introduction
Create a minimal example to create a bazel project that uses jemalloc

run the application
```bash
$ bazel run //:main
```

make sure that the application links to jemalloc
```bash
$ ldd bazel-bin/main
```

# Support different compilers to jemalloc and the final binary
Follow documentation at https://docs.bazel.build/versions/main/tutorial/cc-toolchain-config.html to implement this support

build and run the application using clang
```bash
$ bazel run //:main --config=clang_config
```

The default toolchain used is gcc

Observe the differences in the toolchain used for the 2 builds with the -s command line option to bazel

