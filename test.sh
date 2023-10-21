bazel build //tar
bazel-bin/tar/tar -czvf BUILD.bazel.tgz BUILD.bazel
bazel-bin/tar/tar -cJvf BUILD.bazel.txz BUILD.bazel
bazel-bin/tar/tar --zstd -cf BUILD.bazel.zst BUILD.bazel
bazel-bin/tar/tar --lzma -cf BUILD.bazel.lz BUILD.bazel
