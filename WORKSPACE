workspace(name = "tradestar_functions")

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "contrib_rules_jvm",
    commit = "f7c08ec6d73ef691b03f843e0c2c3dbe766df584",
    remote = "https://github.com/bazel-contrib/rules_jvm",
    shallow_since = "1642674503 +0000",
)

load("@contrib_rules_jvm//:repositories.bzl", "contrib_rules_jvm_deps")

contrib_rules_jvm_deps()

load("@contrib_rules_jvm//:setup.bzl", "contrib_rules_jvm_setup")

contrib_rules_jvm_setup()

git_repository(
    name = "rules_jvm_external",
    remote = "https://github.com/bazelbuild/rules_jvm_external",
    tag = "4.2",
)

load("@rules_jvm_external//:specs.bzl", "maven")
load("@rules_jvm_external//:defs.bzl", "maven_install")

maven_install(
    artifacts = [
        "com.google.guava:guava:31.0.1-jre",
        "com.google.inject:guice:5.0.1",
        maven.artifact(
            "io.fission",
            "fission-java-core",
            "0.0.2-SNAPSHOT",
            neverlink = True,
        ),
        maven.artifact(
            "org.springframework.boot",
            "spring-boot-starter-web",
            "2.0.1.RELEASE",
            neverlink = True,
        ),
        maven.artifact(
            "org.springframework",
            "spring-web",
            "5.0.5.RELEASE",
            neverlink = True,
        ),
        "org.ta4j:ta4j-core:0.14",
        # Test Only Artifacts
        "com.google.truth:truth:1.1.2",
    ],
    repositories = [
        "https://oss.sonatype.org/content/repositories/snapshots/",
        "https://repo1.maven.org/maven2",
    ],
)
