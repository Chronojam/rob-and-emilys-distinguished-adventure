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


# Unsupported target "cache" with type "bench" omitted
# Unsupported target "draw" with type "bench" omitted
# Unsupported target "gpu_cache" with type "example" omitted
# Unsupported target "image" with type "example" omitted
# Unsupported target "issues" with type "test" omitted
# Unsupported target "render_reference" with type "test" omitted

rust_library(
    name = "rusttype",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2018",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__approx__0_3_1//:approx",
        "@raze__arrayvec__0_4_10//:arrayvec",
        "@raze__crossbeam_deque__0_7_1//:crossbeam_deque",
        "@raze__crossbeam_utils__0_6_5//:crossbeam_utils",
        "@raze__linked_hash_map__0_5_1//:linked_hash_map",
        "@raze__num_cpus__1_10_0//:num_cpus",
        "@raze__ordered_float__1_0_1//:ordered_float",
        "@raze__rustc_hash__1_0_1//:rustc_hash",
        "@raze__stb_truetype__0_2_6//:stb_truetype",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.7.5",
    crate_features = [
        "crossbeam-deque",
        "crossbeam-utils",
        "gpu_cache",
        "linked-hash-map",
        "num_cpus",
        "rustc-hash",
    ],
)

# Unsupported target "simple" with type "example" omitted
