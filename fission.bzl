FISSION_DEPS = [
    "@maven//:io_fission_fission_java_core",
    "@maven//:org_springframework_boot_spring_boot_starter_web",
    "@maven//:org_springframework_spring_web",
]

def fission_java_binary(name, srcs, main_class, deps = [], *args, **kwargs):
    native.java_binary(
        name = name,
        srcs = srcs,
        main_class = main_class,
        deps = [d for d in FISSION_DEPS if d not in deps] + deps,
    )
