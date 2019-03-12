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
  "notice", # "MIT,Apache-2.0"
  "reciprocal", # "MPL-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)


# Unsupported target "build-script-build" with type "custom-build" omitted
# Unsupported target "named" with type "example" omitted

rust_library(
    name = "slog",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__erased_serde__0_3_9//:erased_serde",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "2.4.1",
    crate_features = [
        "default",
        "erased-serde",
        "nested-values",
        "std",
    ],
)

# Unsupported target "struct-log-self" with type "example" omitted
