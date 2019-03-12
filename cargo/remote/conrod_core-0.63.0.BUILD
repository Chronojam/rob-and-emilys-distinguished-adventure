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
  "restricted", # "MIT OR Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "conrod_core",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__conrod_derive__0_63_0//:conrod_derive",
        "@raze__daggy__0_5_0//:daggy",
        "@raze__fnv__1_0_6//:fnv",
        "@raze__num__0_2_0//:num",
        "@raze__pistoncore_input__0_24_0//:pistoncore_input",
        "@raze__rusttype__0_7_5//:rusttype",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.63.0",
    crate_features = [
    ],
)

