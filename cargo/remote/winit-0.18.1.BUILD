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
  "notice", # "Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)


# Unsupported target "cursor" with type "example" omitted
# Unsupported target "cursor_grab" with type "example" omitted
# Unsupported target "fullscreen" with type "example" omitted
# Unsupported target "handling_close" with type "example" omitted
# Unsupported target "min_max_size" with type "example" omitted
# Unsupported target "monitor_list" with type "example" omitted
# Unsupported target "multiwindow" with type "example" omitted
# Unsupported target "proxy" with type "example" omitted
# Unsupported target "resizable" with type "example" omitted
# Unsupported target "send_objects" with type "test" omitted
# Unsupported target "serde_objects" with type "test" omitted
# Unsupported target "sync_object" with type "test" omitted
# Unsupported target "transparent" with type "example" omitted
# Unsupported target "window" with type "example" omitted
# Unsupported target "window_icon" with type "example" omitted

rust_library(
    name = "winit",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__lazy_static__1_3_0//:lazy_static",
        "@raze__libc__0_2_50//:libc",
        "@raze__log__0_4_6//:log",
        "@raze__parking_lot__0_7_1//:parking_lot",
        "@raze__percent_encoding__1_0_1//:percent_encoding",
        "@raze__smithay_client_toolkit__0_4_5//:smithay_client_toolkit",
        "@raze__wayland_client__0_21_11//:wayland_client",
        "@raze__x11_dl__2_18_3//:x11_dl",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.18.1",
    crate_features = [
    ],
)

