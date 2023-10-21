package(default_visibility = ["//visibility:public"])

platform(
    name = "rbe_platform",
    constraint_values = [
        "@platforms//cpu:x86_64",
        "@platforms//os:linux",
        "@bazel_tools//tools/cpp:clang",
    ],
    exec_properties = {
        # Buildbuddy guarantees they pre-cache this image.
        "container-image": "docker://gcr.io/flame-public/executor-docker-default:latest",
        "OSFamily": "Linux",
    },
    parents = ["@local_config_platform//:host"],
)
