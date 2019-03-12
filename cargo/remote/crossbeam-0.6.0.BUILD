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
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "crossbeam",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__cfg_if__0_1_7//:cfg_if",
        "@raze__crossbeam_channel__0_3_8//:crossbeam_channel",
        "@raze__crossbeam_deque__0_6_3//:crossbeam_deque",
        "@raze__crossbeam_epoch__0_7_1//:crossbeam_epoch",
        "@raze__crossbeam_utils__0_6_5//:crossbeam_utils",
        "@raze__lazy_static__1_3_0//:lazy_static",
        "@raze__num_cpus__1_10_0//:num_cpus",
        "@raze__parking_lot__0_7_1//:parking_lot",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.6.0",
    crate_features = [
        "crossbeam-epoch",
        "crossbeam-utils",
        "default",
        "std",
    ],
)

# Unsupported target "subcrates" with type "test" omitted
# Unsupported target "wait_group" with type "test" omitted
