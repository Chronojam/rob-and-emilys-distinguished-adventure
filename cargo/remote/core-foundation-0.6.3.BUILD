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
    name = "core_foundation",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__core_foundation_sys__0_6_2//:core_foundation_sys",
        "@raze__libc__0_2_50//:libc",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.6.3",
    crate_features = [
    ],
)

# Unsupported target "use_macro_outside_crate" with type "test" omitted
