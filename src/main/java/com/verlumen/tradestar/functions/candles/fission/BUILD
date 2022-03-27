FISSION_JVM_ENV = [
    "@maven//:io_fission_fission_java_core",
    "@maven//:org_springframework_boot_spring_boot_starter_web",
    "@maven//:org_springframework_spring_web",
]

java_binary(
    name = "get_candles",
    srcs = ["GetCandles.java"],
    main_class = "com.verlumen.tradestar.functions.candles.fission.GetCandles",
    deps = FISSION_JVM_ENV + [],
)
