"""
cargo-raze crate build file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""
package(default_visibility = [
  # Public for visibility by "@raze__crate__version//" targets.
  #
  # Prefer access through "//cargo", which limits external
  # visibility to explicit Cargo.toml dependencies.
  "//visibility:public",
])

licenses([
  "notice", # "MIT"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)


# Unsupported target "after_render" with type "bench" omitted
# Unsupported target "controller_axis" with type "bench" omitted
# Unsupported target "cursor" with type "bench" omitted
# Unsupported target "focus" with type "bench" omitted
# Unsupported target "idle" with type "bench" omitted
alias(
  name = "pistoncore_input",
  actual = ":input",
)

rust_library(
    name = "input",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__bitflags__1_0_4//:bitflags",
        "@raze__piston_viewport__0_5_0//:piston_viewport",
        "@raze__serde__1_0_89//:serde",
        "@raze__serde_derive__1_0_89//:serde_derive",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.24.0",
    crate_features = [
    ],
)

# Unsupported target "lib" with type "test" omitted
# Unsupported target "mouse" with type "bench" omitted
# Unsupported target "press" with type "bench" omitted
# Unsupported target "release" with type "bench" omitted
# Unsupported target "render" with type "bench" omitted
# Unsupported target "resize" with type "bench" omitted
# Unsupported target "text" with type "bench" omitted
# Unsupported target "update" with type "bench" omitted
