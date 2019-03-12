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



rust_library(
    name = "slog_stdlog",
    crate_root = "lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__crossbeam__0_2_12//:crossbeam",
        "@raze__log__0_3_9//:log",
        "@raze__slog__2_4_1//:slog",
        "@raze__slog_scope__4_1_1//:slog_scope",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "3.0.2",
    crate_features = [
    ],
)

