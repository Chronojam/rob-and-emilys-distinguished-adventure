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



rust_library(
    name = "andrew",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__bitflags__1_0_4//:bitflags",
        "@raze__line_drawing__0_7_0//:line_drawing",
        "@raze__rusttype__0_7_5//:rusttype",
        "@raze__walkdir__2_2_7//:walkdir",
        "@raze__xdg__2_2_0//:xdg",
        "@raze__xml_rs__0_8_0//:xml_rs",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.2.0",
    crate_features = [
    ],
)

# Unsupported target "test" with type "example" omitted
