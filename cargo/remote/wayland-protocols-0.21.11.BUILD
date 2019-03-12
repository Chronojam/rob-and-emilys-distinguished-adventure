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


# Unsupported target "build-script-build" with type "custom-build" omitted

rust_library(
    name = "wayland_protocols",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__bitflags__1_0_4//:bitflags",
        "@raze__wayland_client__0_21_11//:wayland_client",
        "@raze__wayland_commons__0_21_11//:wayland_commons",
        "@raze__wayland_sys__0_21_11//:wayland_sys",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.21.11",
    crate_features = [
        "client",
        "native_client",
        "native_lib",
        "unstable_protocols",
        "wayland-client",
        "wayland-sys",
    ],
)

