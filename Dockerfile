FROM ubuntu

RUN apt-get update && apt-get install -y ca-certificates curl git binutils file gdb
RUN curl -L https://github.com/bazelbuild/bazelisk/releases/download/v1.18.0/bazelisk-linux-amd64 -o /usr/bin/bazel && chmod +x /usr/bin/bazel

COPY . /libarchive

WORKDIR /libarchive
RUN ls
RUN bazel build :for_all_platforms