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


# Unsupported target "manual_global_list" with type "example" omitted

rust_library(
    name = "wayland_commons",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__nix__0_12_0//:nix",
        "@raze__wayland_sys__0_21_11//:wayland_sys",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.21.11",
    crate_features = [
        "native_lib",
        "wayland-sys",
    ],
)

