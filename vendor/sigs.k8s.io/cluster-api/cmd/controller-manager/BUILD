load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["main.go"],
    importmap = "installer/vendor/sigs.k8s.io/cluster-api/cmd/controller-manager",
    importpath = "sigs.k8s.io/cluster-api/cmd/controller-manager",
    visibility = ["//visibility:private"],
    deps = [
        "//vendor/github.com/golang/glog:go_default_library",
        "//vendor/github.com/kubernetes-incubator/apiserver-builder/pkg/controller:go_default_library",
        "//vendor/github.com/spf13/pflag:go_default_library",
        "//vendor/k8s.io/apiserver/pkg/util/logs:go_default_library",
        "//vendor/sigs.k8s.io/cluster-api/pkg/controller:go_default_library",
        "//vendor/sigs.k8s.io/cluster-api/pkg/controller/config:go_default_library",
    ],
)

go_binary(
    name = "controller-manager",
    embed = [":go_default_library"],
    importpath = "sigs.k8s.io/cluster-api/cmd/controller-manager",
    visibility = ["//visibility:public"],
)
