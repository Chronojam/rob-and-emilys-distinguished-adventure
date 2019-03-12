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


# Unsupported target "compact-color" with type "example" omitted

rust_library(
    name = "slog_scope",
    crate_root = "lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__crossbeam__0_6_0//:crossbeam",
        "@raze__lazy_static__1_3_0//:lazy_static",
        "@raze__slog__2_4_1//:slog",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "4.1.1",
    crate_features = [
    ],
)

