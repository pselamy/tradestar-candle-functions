load("//src/main/java/com/verlumen/tradestar/functions/fission:fission.bzl", "FISSION_DEPS")
load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")

java_binary(
    name = "get_candles",
    srcs = ["GetCandles.java"],
    main_class = "com.verlumen.tradestar.functions.fission.candles.GetCandles",
    deps = FISSION_DEPS + [],
)

pkg_tar(
    name = "get_candles_jar",
    srcs = [":get_candles_deploy.jar"],
    extension = "tar.gz",
)
