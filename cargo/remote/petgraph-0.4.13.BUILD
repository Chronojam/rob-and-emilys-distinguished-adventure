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


# Unsupported target "graph" with type "test" omitted
# Unsupported target "graphmap" with type "test" omitted
# Unsupported target "iso" with type "bench" omitted
# Unsupported target "iso" with type "test" omitted
# Unsupported target "ograph" with type "bench" omitted

rust_library(
    name = "petgraph",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__fixedbitset__0_1_9//:fixedbitset",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.4.13",
    crate_features = [
    ],
)

# Unsupported target "quickcheck" with type "test" omitted
# Unsupported target "stable_graph" with type "bench" omitted
# Unsupported target "stable_graph" with type "test" omitted
# Unsupported target "unionfind" with type "test" omitted
