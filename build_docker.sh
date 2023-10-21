set -eux

docker stop bazel-builder || true
docker rm bazel-builder || true
docker build -t bazel-base-image .
docker run --privileged --shm-size=4G \
  --mount type=bind,src="$(realpath $(dirname $0))",dst=/libarchive \
  --mount type=bind,src="$HOME/.bazelrc",dst=/home/fakeuser/.bazelrc \
  --mount type=volume,src=bazel-cache,dst=/home/fakeuser/.cache/bazel \
  --name bazel-builder -it bazel-base-image bash
