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


# Unsupported target "compositor_info" with type "example" omitted
# Unsupported target "image_viewer" with type "example" omitted
# Unsupported target "kbd_input" with type "example" omitted
# Unsupported target "pointer_input" with type "example" omitted
# Unsupported target "selection" with type "example" omitted

rust_library(
    name = "smithay_client_toolkit",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__andrew__0_2_0//:andrew",
        "@raze__bitflags__1_0_4//:bitflags",
        "@raze__dlib__0_4_1//:dlib",
        "@raze__lazy_static__1_3_0//:lazy_static",
        "@raze__memmap__0_7_0//:memmap",
        "@raze__nix__0_13_0//:nix",
        "@raze__wayland_client__0_21_11//:wayland_client",
        "@raze__wayland_commons__0_21_11//:wayland_commons",
        "@raze__wayland_protocols__0_21_11//:wayland_protocols",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.4.5",
    crate_features = [
    ],
)

