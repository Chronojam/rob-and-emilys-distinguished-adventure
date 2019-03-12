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
    name = "cocoa",
    crate_root = "src/lib.rs",
    crate_type = "rlib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__bitflags__1_0_4//:bitflags",
        "@raze__block__0_1_6//:block",
        "@raze__core_foundation__0_6_3//:core_foundation",
        "@raze__core_graphics__0_17_3//:core_graphics",
        "@raze__foreign_types__0_3_2//:foreign_types",
        "@raze__libc__0_2_50//:libc",
        "@raze__objc__0_2_5//:objc",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.18.4",
    crate_features = [
    ],
)

# Unsupported target "foundation" with type "test" omitted
# Unsupported target "fullscreen" with type "example" omitted
# Unsupported target "hello_world" with type "example" omitted
# Unsupported target "tab_view" with type "example" omitted
