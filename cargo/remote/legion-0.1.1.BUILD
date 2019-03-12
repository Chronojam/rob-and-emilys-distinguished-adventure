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


# Unsupported target "allocation_stress" with type "bench" omitted
# Unsupported target "hello_world" with type "example" omitted

rust_library(
    name = "legion",
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2018",
    srcs = glob(["**/*.rs"]),
    deps = [
        "@raze__downcast_rs__1_0_3//:downcast_rs",
        "@raze__fnv__1_0_6//:fnv",
        "@raze__itertools__0_8_0//:itertools",
        "@raze__names__0_11_0//:names",
        "@raze__parking_lot__0_7_1//:parking_lot",
        "@raze__rayon__1_0_3//:rayon",
        "@raze__serde__1_0_89//:serde",
        "@raze__slog__2_4_1//:slog",
        "@raze__slog_stdlog__3_0_2//:slog_stdlog",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.1.1",
    crate_features = [
        "default",
        "par-iter",
        "rayon",
        "serde",
    ],
)

# Unsupported target "pos_vel" with type "bench" omitted
# Unsupported target "query_api" with type "test" omitted
# Unsupported target "world_api" with type "test" omitted
