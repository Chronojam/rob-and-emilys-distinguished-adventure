"""
cargo-raze crate workspace functions

DO NOT EDIT! Replaced on runs of cargo-raze
"""
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

def _new_http_archive(name, **kwargs):
    if not native.existing_rule(name):
        http_archive(name=name, **kwargs)

def _new_git_repository(name, **kwargs):
    if not native.existing_rule(name):
        new_git_repository(name=name, **kwargs)

def raze_fetch_remote_crates():

    _new_http_archive(
        name = "raze__andrew__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/andrew/andrew-0.2.0.crate",
        type = "tar.gz",
        sha256 = "48fb30d9ad567e58e97dfeedcb54c66a6fbdeae3fc869075f5c0a2739dc2d849",
        strip_prefix = "andrew-0.2.0",
        build_file = Label("//cargo/remote:andrew-0.2.0.BUILD")
    )

    _new_http_archive(
        name = "raze__android_glue__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/android_glue/android_glue-0.2.3.crate",
        type = "tar.gz",
        sha256 = "000444226fcff248f2bc4c7625be32c63caccfecc2723a2b9f78a7487a49c407",
        strip_prefix = "android_glue-0.2.3",
        build_file = Label("//cargo/remote:android_glue-0.2.3.BUILD")
    )

    _new_http_archive(
        name = "raze__approx__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/approx/approx-0.3.1.crate",
        type = "tar.gz",
        sha256 = "3c57ff1a5b00753647aebbbcf4ea67fa1e711a65ea7a30eb90dbf07de2485aee",
        strip_prefix = "approx-0.3.1",
        build_file = Label("//cargo/remote:approx-0.3.1.BUILD")
    )

    _new_http_archive(
        name = "raze__arrayvec__0_4_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/arrayvec/arrayvec-0.4.10.crate",
        type = "tar.gz",
        sha256 = "92c7fb76bc8826a8b33b4ee5bb07a247a81e76764ab4d55e8f73e3a4d8808c71",
        strip_prefix = "arrayvec-0.4.10",
        build_file = Label("//cargo/remote:arrayvec-0.4.10.BUILD")
    )

    _new_http_archive(
        name = "raze__autocfg__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/autocfg/autocfg-0.1.2.crate",
        type = "tar.gz",
        sha256 = "a6d640bee2da49f60a4068a7fae53acde8982514ab7bae8b8cea9e88cbcfd799",
        strip_prefix = "autocfg-0.1.2",
        build_file = Label("//cargo/remote:autocfg-0.1.2.BUILD")
    )

    _new_http_archive(
        name = "raze__backtrace__0_3_14",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/backtrace/backtrace-0.3.14.crate",
        type = "tar.gz",
        sha256 = "cd5a90e2b463010cd0e0ce9a11d4a9d5d58d9f41d4a6ba3dcaf9e68b466e88b4",
        strip_prefix = "backtrace-0.3.14",
        build_file = Label("//cargo/remote:backtrace-0.3.14.BUILD")
    )

    _new_http_archive(
        name = "raze__backtrace_sys__0_1_28",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/backtrace-sys/backtrace-sys-0.1.28.crate",
        type = "tar.gz",
        sha256 = "797c830ac25ccc92a7f8a7b9862bde440715531514594a6154e3d4a54dd769b6",
        strip_prefix = "backtrace-sys-0.1.28",
        build_file = Label("//cargo/remote:backtrace-sys-0.1.28.BUILD")
    )

    _new_http_archive(
        name = "raze__bitflags__1_0_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bitflags/bitflags-1.0.4.crate",
        type = "tar.gz",
        sha256 = "228047a76f468627ca71776ecdebd732a3423081fcf5125585bcd7c49886ce12",
        strip_prefix = "bitflags-1.0.4",
        build_file = Label("//cargo/remote:bitflags-1.0.4.BUILD")
    )

    _new_http_archive(
        name = "raze__block__0_1_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/block/block-0.1.6.crate",
        type = "tar.gz",
        sha256 = "0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a",
        strip_prefix = "block-0.1.6",
        build_file = Label("//cargo/remote:block-0.1.6.BUILD")
    )

    _new_http_archive(
        name = "raze__byteorder__1_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/byteorder/byteorder-1.3.1.crate",
        type = "tar.gz",
        sha256 = "a019b10a2a7cdeb292db131fc8113e57ea2a908f6e7894b0c3c671893b65dbeb",
        strip_prefix = "byteorder-1.3.1",
        build_file = Label("//cargo/remote:byteorder-1.3.1.BUILD")
    )

    _new_http_archive(
        name = "raze__cc__1_0_31",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cc/cc-1.0.31.crate",
        type = "tar.gz",
        sha256 = "c9ce8bb087aacff865633f0bd5aeaed910fe2fe55b55f4739527f2e023a2e53d",
        strip_prefix = "cc-1.0.31",
        build_file = Label("//cargo/remote:cc-1.0.31.BUILD")
    )

    _new_http_archive(
        name = "raze__cfg_if__0_1_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cfg-if/cfg-if-0.1.7.crate",
        type = "tar.gz",
        sha256 = "11d43355396e872eefb45ce6342e4374ed7bc2b3a502d1b28e36d6e23c05d1f4",
        strip_prefix = "cfg-if-0.1.7",
        build_file = Label("//cargo/remote:cfg-if-0.1.7.BUILD")
    )

    _new_http_archive(
        name = "raze__cloudabi__0_0_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cloudabi/cloudabi-0.0.3.crate",
        type = "tar.gz",
        sha256 = "ddfc5b9aa5d4507acaf872de71051dfd0e309860e88966e1051e462a077aac4f",
        strip_prefix = "cloudabi-0.0.3",
        build_file = Label("//cargo/remote:cloudabi-0.0.3.BUILD")
    )

    _new_http_archive(
        name = "raze__cocoa__0_18_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cocoa/cocoa-0.18.4.crate",
        type = "tar.gz",
        sha256 = "cf79daa4e11e5def06e55306aa3601b87de6b5149671529318da048f67cdd77b",
        strip_prefix = "cocoa-0.18.4",
        build_file = Label("//cargo/remote:cocoa-0.18.4.BUILD")
    )

    _new_http_archive(
        name = "raze__conrod_core__0_63_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/conrod_core/conrod_core-0.63.0.crate",
        type = "tar.gz",
        sha256 = "c13ae07abf682dc5cc51f48adca531473a74348b93bcfa088953168199ac899f",
        strip_prefix = "conrod_core-0.63.0",
        build_file = Label("//cargo/remote:conrod_core-0.63.0.BUILD")
    )

    _new_http_archive(
        name = "raze__conrod_derive__0_63_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/conrod_derive/conrod_derive-0.63.0.crate",
        type = "tar.gz",
        sha256 = "aadc989d34015ed114ec7bc15e8c5568a4e4258d2e14ae4ed13b18995f4ddbc5",
        strip_prefix = "conrod_derive-0.63.0",
        build_file = Label("//cargo/remote:conrod_derive-0.63.0.BUILD")
    )

    _new_http_archive(
        name = "raze__conrod_winit__0_63_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/conrod_winit/conrod_winit-0.63.0.crate",
        type = "tar.gz",
        sha256 = "b5975f29ccbe2a0c2257e9c19d18f21d0d907195a86350bb4c4c999d8bd05acb",
        strip_prefix = "conrod_winit-0.63.0",
        build_file = Label("//cargo/remote:conrod_winit-0.63.0.BUILD")
    )

    _new_http_archive(
        name = "raze__core_foundation__0_6_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/core-foundation/core-foundation-0.6.3.crate",
        type = "tar.gz",
        sha256 = "4e2640d6d0bf22e82bed1b73c6aef8d5dd31e5abe6666c57e6d45e2649f4f887",
        strip_prefix = "core-foundation-0.6.3",
        build_file = Label("//cargo/remote:core-foundation-0.6.3.BUILD")
    )

    _new_http_archive(
        name = "raze__core_foundation_sys__0_6_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/core-foundation-sys/core-foundation-sys-0.6.2.crate",
        type = "tar.gz",
        sha256 = "e7ca8a5221364ef15ce201e8ed2f609fc312682a8f4e0e3d4aa5879764e0fa3b",
        strip_prefix = "core-foundation-sys-0.6.2",
        build_file = Label("//cargo/remote:core-foundation-sys-0.6.2.BUILD")
    )

    _new_http_archive(
        name = "raze__core_graphics__0_17_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/core-graphics/core-graphics-0.17.3.crate",
        type = "tar.gz",
        sha256 = "56790968ab1c8a1202a102e6de05fc6e1ec87da99e4e93e9a7d13efbfc1e95a9",
        strip_prefix = "core-graphics-0.17.3",
        build_file = Label("//cargo/remote:core-graphics-0.17.3.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam__0_2_12",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam/crossbeam-0.2.12.crate",
        type = "tar.gz",
        sha256 = "bd66663db5a988098a89599d4857919b3acf7f61402e61365acfd3919857b9be",
        strip_prefix = "crossbeam-0.2.12",
        build_file = Label("//cargo/remote:crossbeam-0.2.12.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam__0_6_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam/crossbeam-0.6.0.crate",
        type = "tar.gz",
        sha256 = "ad4c7ea749d9fb09e23c5cb17e3b70650860553a0e2744e38446b1803bf7db94",
        strip_prefix = "crossbeam-0.6.0",
        build_file = Label("//cargo/remote:crossbeam-0.6.0.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam_channel__0_3_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-channel/crossbeam-channel-0.3.8.crate",
        type = "tar.gz",
        sha256 = "0f0ed1a4de2235cabda8558ff5840bffb97fcb64c97827f354a451307df5f72b",
        strip_prefix = "crossbeam-channel-0.3.8",
        build_file = Label("//cargo/remote:crossbeam-channel-0.3.8.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam_deque__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-deque/crossbeam-deque-0.2.0.crate",
        type = "tar.gz",
        sha256 = "f739f8c5363aca78cfb059edf753d8f0d36908c348f3d8d1503f03d8b75d9cf3",
        strip_prefix = "crossbeam-deque-0.2.0",
        build_file = Label("//cargo/remote:crossbeam-deque-0.2.0.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam_deque__0_6_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-deque/crossbeam-deque-0.6.3.crate",
        type = "tar.gz",
        sha256 = "05e44b8cf3e1a625844d1750e1f7820da46044ff6d28f4d43e455ba3e5bb2c13",
        strip_prefix = "crossbeam-deque-0.6.3",
        build_file = Label("//cargo/remote:crossbeam-deque-0.6.3.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam_deque__0_7_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-deque/crossbeam-deque-0.7.1.crate",
        type = "tar.gz",
        sha256 = "b18cd2e169ad86297e6bc0ad9aa679aee9daa4f19e8163860faf7c164e4f5a71",
        strip_prefix = "crossbeam-deque-0.7.1",
        build_file = Label("//cargo/remote:crossbeam-deque-0.7.1.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam_epoch__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-epoch/crossbeam-epoch-0.3.1.crate",
        type = "tar.gz",
        sha256 = "927121f5407de9956180ff5e936fe3cf4324279280001cd56b669d28ee7e9150",
        strip_prefix = "crossbeam-epoch-0.3.1",
        build_file = Label("//cargo/remote:crossbeam-epoch-0.3.1.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam_epoch__0_7_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-epoch/crossbeam-epoch-0.7.1.crate",
        type = "tar.gz",
        sha256 = "04c9e3102cc2d69cd681412141b390abd55a362afc1540965dad0ad4d34280b4",
        strip_prefix = "crossbeam-epoch-0.7.1",
        build_file = Label("//cargo/remote:crossbeam-epoch-0.7.1.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam_utils__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-utils/crossbeam-utils-0.2.2.crate",
        type = "tar.gz",
        sha256 = "2760899e32a1d58d5abb31129f8fae5de75220bc2176e77ff7c627ae45c918d9",
        strip_prefix = "crossbeam-utils-0.2.2",
        build_file = Label("//cargo/remote:crossbeam-utils-0.2.2.BUILD")
    )

    _new_http_archive(
        name = "raze__crossbeam_utils__0_6_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-utils/crossbeam-utils-0.6.5.crate",
        type = "tar.gz",
        sha256 = "f8306fcef4a7b563b76b7dd949ca48f52bc1141aa067d2ea09565f3e2652aa5c",
        strip_prefix = "crossbeam-utils-0.6.5",
        build_file = Label("//cargo/remote:crossbeam-utils-0.6.5.BUILD")
    )

    _new_http_archive(
        name = "raze__daggy__0_5_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/daggy/daggy-0.5.0.crate",
        type = "tar.gz",
        sha256 = "9293a0da7d1bc1f30090ece4d9f9de79a07be7302ddb00e5eb1fefb6ee6409e2",
        strip_prefix = "daggy-0.5.0",
        build_file = Label("//cargo/remote:daggy-0.5.0.BUILD")
    )

    _new_http_archive(
        name = "raze__dlib__0_4_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/dlib/dlib-0.4.1.crate",
        type = "tar.gz",
        sha256 = "77e51249a9d823a4cb79e3eca6dcd756153e8ed0157b6c04775d04bf1b13b76a",
        strip_prefix = "dlib-0.4.1",
        build_file = Label("//cargo/remote:dlib-0.4.1.BUILD")
    )

    _new_http_archive(
        name = "raze__downcast_rs__1_0_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/downcast-rs/downcast-rs-1.0.3.crate",
        type = "tar.gz",
        sha256 = "18df8ce4470c189d18aa926022da57544f31e154631eb4cfe796aea97051fe6c",
        strip_prefix = "downcast-rs-1.0.3",
        build_file = Label("//cargo/remote:downcast-rs-1.0.3.BUILD")
    )

    _new_http_archive(
        name = "raze__either__1_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/either/either-1.5.1.crate",
        type = "tar.gz",
        sha256 = "c67353c641dc847124ea1902d69bd753dee9bb3beff9aa3662ecf86c971d1fac",
        strip_prefix = "either-1.5.1",
        build_file = Label("//cargo/remote:either-1.5.1.BUILD")
    )

    _new_http_archive(
        name = "raze__erased_serde__0_3_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/erased-serde/erased-serde-0.3.9.crate",
        type = "tar.gz",
        sha256 = "3beee4bc16478a1b26f2e80ad819a52d24745e292f521a63c16eea5f74b7eb60",
        strip_prefix = "erased-serde-0.3.9",
        build_file = Label("//cargo/remote:erased-serde-0.3.9.BUILD")
    )

    _new_http_archive(
        name = "raze__fixedbitset__0_1_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fixedbitset/fixedbitset-0.1.9.crate",
        type = "tar.gz",
        sha256 = "86d4de0081402f5e88cdac65c8dcdcc73118c1a7a465e2a05f0da05843a8ea33",
        strip_prefix = "fixedbitset-0.1.9",
        build_file = Label("//cargo/remote:fixedbitset-0.1.9.BUILD")
    )

    _new_http_archive(
        name = "raze__fnv__1_0_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fnv/fnv-1.0.6.crate",
        type = "tar.gz",
        sha256 = "2fad85553e09a6f881f739c29f0b00b0f01357c743266d478b68951ce23285f3",
        strip_prefix = "fnv-1.0.6",
        build_file = Label("//cargo/remote:fnv-1.0.6.BUILD")
    )

    _new_http_archive(
        name = "raze__foreign_types__0_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/foreign-types/foreign-types-0.3.2.crate",
        type = "tar.gz",
        sha256 = "f6f339eb8adc052cd2ca78910fda869aefa38d22d5cb648e6485e4d3fc06f3b1",
        strip_prefix = "foreign-types-0.3.2",
        build_file = Label("//cargo/remote:foreign-types-0.3.2.BUILD")
    )

    _new_http_archive(
        name = "raze__foreign_types_shared__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/foreign-types-shared/foreign-types-shared-0.1.1.crate",
        type = "tar.gz",
        sha256 = "00b0228411908ca8685dba7fc2cdd70ec9990a6e753e89b6ac91a84c40fbaf4b",
        strip_prefix = "foreign-types-shared-0.1.1",
        build_file = Label("//cargo/remote:foreign-types-shared-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__fuchsia_cprng__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fuchsia-cprng/fuchsia-cprng-0.1.1.crate",
        type = "tar.gz",
        sha256 = "a06f77d526c1a601b7c4cdd98f54b5eaabffc14d5f2f0296febdc7f357c6d3ba",
        strip_prefix = "fuchsia-cprng-0.1.1",
        build_file = Label("//cargo/remote:fuchsia-cprng-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__itertools__0_8_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/itertools/itertools-0.8.0.crate",
        type = "tar.gz",
        sha256 = "5b8467d9c1cebe26feb08c640139247fac215782d35371ade9a2136ed6085358",
        strip_prefix = "itertools-0.8.0",
        build_file = Label("//cargo/remote:itertools-0.8.0.BUILD")
    )

    _new_http_archive(
        name = "raze__lazy_static__1_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lazy_static/lazy_static-1.3.0.crate",
        type = "tar.gz",
        sha256 = "bc5729f27f159ddd61f4df6228e827e86643d4d3e7c32183cb30a1c08f604a14",
        strip_prefix = "lazy_static-1.3.0",
        build_file = Label("//cargo/remote:lazy_static-1.3.0.BUILD")
    )

    _new_http_archive(
        name = "raze__legion__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/legion/legion-0.1.1.crate",
        type = "tar.gz",
        sha256 = "4db55330f3d4280a96fe693e00eae7c21cf93421cc6533f3ead82cad3acabcef",
        strip_prefix = "legion-0.1.1",
        build_file = Label("//cargo/remote:legion-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__libc__0_2_50",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/libc/libc-0.2.50.crate",
        type = "tar.gz",
        sha256 = "aab692d7759f5cd8c859e169db98ae5b52c924add2af5fbbca11d12fefb567c1",
        strip_prefix = "libc-0.2.50",
        build_file = Label("//cargo/remote:libc-0.2.50.BUILD")
    )

    _new_http_archive(
        name = "raze__libloading__0_5_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/libloading/libloading-0.5.0.crate",
        type = "tar.gz",
        sha256 = "9c3ad660d7cb8c5822cd83d10897b0f1f1526792737a179e73896152f85b88c2",
        strip_prefix = "libloading-0.5.0",
        build_file = Label("//cargo/remote:libloading-0.5.0.BUILD")
    )

    _new_http_archive(
        name = "raze__line_drawing__0_7_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/line_drawing/line_drawing-0.7.0.crate",
        type = "tar.gz",
        sha256 = "5cc7ad3d82c845bdb5dde34ffdcc7a5fb4d2996e1e1ee0f19c33bc80e15196b9",
        strip_prefix = "line_drawing-0.7.0",
        build_file = Label("//cargo/remote:line_drawing-0.7.0.BUILD")
    )

    _new_http_archive(
        name = "raze__linked_hash_map__0_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/linked-hash-map/linked-hash-map-0.5.1.crate",
        type = "tar.gz",
        sha256 = "70fb39025bc7cdd76305867c4eccf2f2dcf6e9a57f5b21a93e1c2d86cd03ec9e",
        strip_prefix = "linked-hash-map-0.5.1",
        build_file = Label("//cargo/remote:linked-hash-map-0.5.1.BUILD")
    )

    _new_http_archive(
        name = "raze__lock_api__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lock_api/lock_api-0.1.5.crate",
        type = "tar.gz",
        sha256 = "62ebf1391f6acad60e5c8b43706dde4582df75c06698ab44511d15016bc2442c",
        strip_prefix = "lock_api-0.1.5",
        build_file = Label("//cargo/remote:lock_api-0.1.5.BUILD")
    )

    _new_http_archive(
        name = "raze__log__0_3_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log/log-0.3.9.crate",
        type = "tar.gz",
        sha256 = "e19e8d5c34a3e0e2223db8e060f9e8264aeeb5c5fc64a4ee9965c062211c024b",
        strip_prefix = "log-0.3.9",
        build_file = Label("//cargo/remote:log-0.3.9.BUILD")
    )

    _new_http_archive(
        name = "raze__log__0_4_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log/log-0.4.6.crate",
        type = "tar.gz",
        sha256 = "c84ec4b527950aa83a329754b01dbe3f58361d1c5efacd1f6d68c494d08a17c6",
        strip_prefix = "log-0.4.6",
        build_file = Label("//cargo/remote:log-0.4.6.BUILD")
    )

    _new_http_archive(
        name = "raze__malloc_buf__0_0_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/malloc_buf/malloc_buf-0.0.6.crate",
        type = "tar.gz",
        sha256 = "62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb",
        strip_prefix = "malloc_buf-0.0.6",
        build_file = Label("//cargo/remote:malloc_buf-0.0.6.BUILD")
    )

    _new_http_archive(
        name = "raze__memmap__0_7_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/memmap/memmap-0.7.0.crate",
        type = "tar.gz",
        sha256 = "6585fd95e7bb50d6cc31e20d4cf9afb4e2ba16c5846fc76793f11218da9c475b",
        strip_prefix = "memmap-0.7.0",
        build_file = Label("//cargo/remote:memmap-0.7.0.BUILD")
    )

    _new_http_archive(
        name = "raze__memoffset__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/memoffset/memoffset-0.2.1.crate",
        type = "tar.gz",
        sha256 = "0f9dc261e2b62d7a622bf416ea3c5245cdd5d9a7fcc428c0d06804dfce1775b3",
        strip_prefix = "memoffset-0.2.1",
        build_file = Label("//cargo/remote:memoffset-0.2.1.BUILD")
    )

    _new_http_archive(
        name = "raze__names__0_11_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/names/names-0.11.0.crate",
        type = "tar.gz",
        sha256 = "ef320dab323286b50fb5cdda23f61c796a72a89998ab565ca32525c5c556f2da",
        strip_prefix = "names-0.11.0",
        build_file = Label("//cargo/remote:names-0.11.0.BUILD")
    )

    _new_http_archive(
        name = "raze__nix__0_12_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/nix/nix-0.12.0.crate",
        type = "tar.gz",
        sha256 = "921f61dc817b379d0834e45d5ec45beaacfae97082090a49c2cf30dcbc30206f",
        strip_prefix = "nix-0.12.0",
        build_file = Label("//cargo/remote:nix-0.12.0.BUILD")
    )

    _new_http_archive(
        name = "raze__nix__0_13_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/nix/nix-0.13.0.crate",
        type = "tar.gz",
        sha256 = "46f0f3210768d796e8fa79ec70ee6af172dacbe7147f5e69be5240a47778302b",
        strip_prefix = "nix-0.13.0",
        build_file = Label("//cargo/remote:nix-0.13.0.BUILD")
    )

    _new_http_archive(
        name = "raze__nodrop__0_1_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/nodrop/nodrop-0.1.13.crate",
        type = "tar.gz",
        sha256 = "2f9667ddcc6cc8a43afc9b7917599d7216aa09c463919ea32c59ed6cac8bc945",
        strip_prefix = "nodrop-0.1.13",
        build_file = Label("//cargo/remote:nodrop-0.1.13.BUILD")
    )

    _new_http_archive(
        name = "raze__num__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num/num-0.2.0.crate",
        type = "tar.gz",
        sha256 = "cf4825417e1e1406b3782a8ce92f4d53f26ec055e3622e1881ca8e9f5f9e08db",
        strip_prefix = "num-0.2.0",
        build_file = Label("//cargo/remote:num-0.2.0.BUILD")
    )

    _new_http_archive(
        name = "raze__num_bigint__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num-bigint/num-bigint-0.2.2.crate",
        type = "tar.gz",
        sha256 = "57450397855d951f1a41305e54851b1a7b8f5d2e349543a02a2effe25459f718",
        strip_prefix = "num-bigint-0.2.2",
        build_file = Label("//cargo/remote:num-bigint-0.2.2.BUILD")
    )

    _new_http_archive(
        name = "raze__num_complex__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num-complex/num-complex-0.2.1.crate",
        type = "tar.gz",
        sha256 = "107b9be86cd2481930688277b675b0114578227f034674726605b8a482d8baf8",
        strip_prefix = "num-complex-0.2.1",
        build_file = Label("//cargo/remote:num-complex-0.2.1.BUILD")
    )

    _new_http_archive(
        name = "raze__num_integer__0_1_39",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num-integer/num-integer-0.1.39.crate",
        type = "tar.gz",
        sha256 = "e83d528d2677f0518c570baf2b7abdcf0cd2d248860b68507bdcb3e91d4c0cea",
        strip_prefix = "num-integer-0.1.39",
        build_file = Label("//cargo/remote:num-integer-0.1.39.BUILD")
    )

    _new_http_archive(
        name = "raze__num_iter__0_1_37",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num-iter/num-iter-0.1.37.crate",
        type = "tar.gz",
        sha256 = "af3fdbbc3291a5464dc57b03860ec37ca6bf915ed6ee385e7c6c052c422b2124",
        strip_prefix = "num-iter-0.1.37",
        build_file = Label("//cargo/remote:num-iter-0.1.37.BUILD")
    )

    _new_http_archive(
        name = "raze__num_rational__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num-rational/num-rational-0.2.1.crate",
        type = "tar.gz",
        sha256 = "4e96f040177bb3da242b5b1ecf3f54b5d5af3efbbfb18608977a5d2767b22f10",
        strip_prefix = "num-rational-0.2.1",
        build_file = Label("//cargo/remote:num-rational-0.2.1.BUILD")
    )

    _new_http_archive(
        name = "raze__num_traits__0_2_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num-traits/num-traits-0.2.6.crate",
        type = "tar.gz",
        sha256 = "0b3a5d7cc97d6d30d8b9bc8fa19bf45349ffe46241e8816f50f62f6d6aaabee1",
        strip_prefix = "num-traits-0.2.6",
        build_file = Label("//cargo/remote:num-traits-0.2.6.BUILD")
    )

    _new_http_archive(
        name = "raze__num_cpus__1_10_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num_cpus/num_cpus-1.10.0.crate",
        type = "tar.gz",
        sha256 = "1a23f0ed30a54abaa0c7e83b1d2d87ada7c3c23078d1d87815af3e3b6385fbba",
        strip_prefix = "num_cpus-1.10.0",
        build_file = Label("//cargo/remote:num_cpus-1.10.0.BUILD")
    )

    _new_http_archive(
        name = "raze__objc__0_2_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/objc/objc-0.2.5.crate",
        type = "tar.gz",
        sha256 = "9833ab0efe5361b1e2122a0544a5d3359576911a42cb098c2e59be8650807367",
        strip_prefix = "objc-0.2.5",
        build_file = Label("//cargo/remote:objc-0.2.5.BUILD")
    )

    _new_http_archive(
        name = "raze__ordered_float__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ordered-float/ordered-float-1.0.1.crate",
        type = "tar.gz",
        sha256 = "2f0015e9e8e28ee20c581cfbfe47c650cedeb9ed0721090e0b7ebb10b9cdbcc2",
        strip_prefix = "ordered-float-1.0.1",
        build_file = Label("//cargo/remote:ordered-float-1.0.1.BUILD")
    )

    _new_http_archive(
        name = "raze__owning_ref__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/owning_ref/owning_ref-0.4.0.crate",
        type = "tar.gz",
        sha256 = "49a4b8ea2179e6a2e27411d3bca09ca6dd630821cf6894c6c7c8467a8ee7ef13",
        strip_prefix = "owning_ref-0.4.0",
        build_file = Label("//cargo/remote:owning_ref-0.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__parking_lot__0_7_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/parking_lot/parking_lot-0.7.1.crate",
        type = "tar.gz",
        sha256 = "ab41b4aed082705d1056416ae4468b6ea99d52599ecf3169b00088d43113e337",
        strip_prefix = "parking_lot-0.7.1",
        build_file = Label("//cargo/remote:parking_lot-0.7.1.BUILD")
    )

    _new_http_archive(
        name = "raze__parking_lot_core__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/parking_lot_core/parking_lot_core-0.4.0.crate",
        type = "tar.gz",
        sha256 = "94c8c7923936b28d546dfd14d4472eaf34c99b14e1c973a32b3e6d4eb04298c9",
        strip_prefix = "parking_lot_core-0.4.0",
        build_file = Label("//cargo/remote:parking_lot_core-0.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__percent_encoding__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/percent-encoding/percent-encoding-1.0.1.crate",
        type = "tar.gz",
        sha256 = "31010dd2e1ac33d5b46a5b413495239882813e0369f8ed8a5e266f173602f831",
        strip_prefix = "percent-encoding-1.0.1",
        build_file = Label("//cargo/remote:percent-encoding-1.0.1.BUILD")
    )

    _new_http_archive(
        name = "raze__petgraph__0_4_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/petgraph/petgraph-0.4.13.crate",
        type = "tar.gz",
        sha256 = "9c3659d1ee90221741f65dd128d9998311b0e40c5d3c23a62445938214abce4f",
        strip_prefix = "petgraph-0.4.13",
        build_file = Label("//cargo/remote:petgraph-0.4.13.BUILD")
    )

    _new_http_archive(
        name = "raze__piston_float__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/piston-float/piston-float-0.3.0.crate",
        type = "tar.gz",
        sha256 = "b058c3a640efd4bcf63266512e4bb03187192c1b29edd38b16d5a014613e3199",
        strip_prefix = "piston-float-0.3.0",
        build_file = Label("//cargo/remote:piston-float-0.3.0.BUILD")
    )

    _new_http_archive(
        name = "raze__piston_viewport__0_5_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/piston-viewport/piston-viewport-0.5.0.crate",
        type = "tar.gz",
        sha256 = "7d96dd995f7dabe6d57cda668ec0fda39d6fe6e1e0b23f772582f383f2013611",
        strip_prefix = "piston-viewport-0.5.0",
        build_file = Label("//cargo/remote:piston-viewport-0.5.0.BUILD")
    )

    _new_http_archive(
        name = "raze__pistoncore_input__0_24_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pistoncore-input/pistoncore-input-0.24.0.crate",
        type = "tar.gz",
        sha256 = "0c612ce242c7bac8e96426a0ca34275fd980af440f0cca7c6c0e840ef8a4052f",
        strip_prefix = "pistoncore-input-0.24.0",
        build_file = Label("//cargo/remote:pistoncore-input-0.24.0.BUILD")
    )

    _new_http_archive(
        name = "raze__pkg_config__0_3_14",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pkg-config/pkg-config-0.3.14.crate",
        type = "tar.gz",
        sha256 = "676e8eb2b1b4c9043511a9b7bea0915320d7e502b0a079fb03f9635a5252b18c",
        strip_prefix = "pkg-config-0.3.14",
        build_file = Label("//cargo/remote:pkg-config-0.3.14.BUILD")
    )

    _new_http_archive(
        name = "raze__proc_macro2__0_4_27",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/proc-macro2/proc-macro2-0.4.27.crate",
        type = "tar.gz",
        sha256 = "4d317f9caece796be1980837fd5cb3dfec5613ebdb04ad0956deea83ce168915",
        strip_prefix = "proc-macro2-0.4.27",
        build_file = Label("//cargo/remote:proc-macro2-0.4.27.BUILD")
    )

    _new_http_archive(
        name = "raze__quote__0_6_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/quote/quote-0.6.11.crate",
        type = "tar.gz",
        sha256 = "cdd8e04bd9c52e0342b406469d494fcb033be4bdbe5c606016defbb1681411e1",
        strip_prefix = "quote-0.6.11",
        build_file = Label("//cargo/remote:quote-0.6.11.BUILD")
    )

    _new_http_archive(
        name = "raze__rand__0_3_23",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand/rand-0.3.23.crate",
        type = "tar.gz",
        sha256 = "64ac302d8f83c0c1974bf758f6b041c6c8ada916fbb44a609158ca8b064cc76c",
        strip_prefix = "rand-0.3.23",
        build_file = Label("//cargo/remote:rand-0.3.23.BUILD")
    )

    _new_http_archive(
        name = "raze__rand__0_4_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand/rand-0.4.6.crate",
        type = "tar.gz",
        sha256 = "552840b97013b1a26992c11eac34bdd778e464601a4c2054b5f0bff7c6761293",
        strip_prefix = "rand-0.4.6",
        build_file = Label("//cargo/remote:rand-0.4.6.BUILD")
    )

    _new_http_archive(
        name = "raze__rand__0_6_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand/rand-0.6.5.crate",
        type = "tar.gz",
        sha256 = "6d71dacdc3c88c1fde3885a3be3fbab9f35724e6ce99467f7d9c5026132184ca",
        strip_prefix = "rand-0.6.5",
        build_file = Label("//cargo/remote:rand-0.6.5.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_chacha__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_chacha/rand_chacha-0.1.1.crate",
        type = "tar.gz",
        sha256 = "556d3a1ca6600bfcbab7c7c91ccb085ac7fbbcd70e008a98742e7847f4f7bcef",
        strip_prefix = "rand_chacha-0.1.1",
        build_file = Label("//cargo/remote:rand_chacha-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_core__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_core/rand_core-0.3.1.crate",
        type = "tar.gz",
        sha256 = "7a6fdeb83b075e8266dcc8762c22776f6877a63111121f5f8c7411e5be7eed4b",
        strip_prefix = "rand_core-0.3.1",
        build_file = Label("//cargo/remote:rand_core-0.3.1.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_core__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_core/rand_core-0.4.0.crate",
        type = "tar.gz",
        sha256 = "d0e7a549d590831370895ab7ba4ea0c1b6b011d106b5ff2da6eee112615e6dc0",
        strip_prefix = "rand_core-0.4.0",
        build_file = Label("//cargo/remote:rand_core-0.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_hc__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_hc/rand_hc-0.1.0.crate",
        type = "tar.gz",
        sha256 = "7b40677c7be09ae76218dc623efbf7b18e34bced3f38883af07bb75630a21bc4",
        strip_prefix = "rand_hc-0.1.0",
        build_file = Label("//cargo/remote:rand_hc-0.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_isaac__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_isaac/rand_isaac-0.1.1.crate",
        type = "tar.gz",
        sha256 = "ded997c9d5f13925be2a6fd7e66bf1872597f759fd9dd93513dd7e92e5a5ee08",
        strip_prefix = "rand_isaac-0.1.1",
        build_file = Label("//cargo/remote:rand_isaac-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_jitter__0_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_jitter/rand_jitter-0.1.3.crate",
        type = "tar.gz",
        sha256 = "7b9ea758282efe12823e0d952ddb269d2e1897227e464919a554f2a03ef1b832",
        strip_prefix = "rand_jitter-0.1.3",
        build_file = Label("//cargo/remote:rand_jitter-0.1.3.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_os__0_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_os/rand_os-0.1.3.crate",
        type = "tar.gz",
        sha256 = "7b75f676a1e053fc562eafbb47838d67c84801e38fc1ba459e8f180deabd5071",
        strip_prefix = "rand_os-0.1.3",
        build_file = Label("//cargo/remote:rand_os-0.1.3.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_pcg__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_pcg/rand_pcg-0.1.2.crate",
        type = "tar.gz",
        sha256 = "abf9b09b01790cfe0364f52bf32995ea3c39f4d2dd011eac241d2914146d0b44",
        strip_prefix = "rand_pcg-0.1.2",
        build_file = Label("//cargo/remote:rand_pcg-0.1.2.BUILD")
    )

    _new_http_archive(
        name = "raze__rand_xorshift__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_xorshift/rand_xorshift-0.1.1.crate",
        type = "tar.gz",
        sha256 = "cbf7e9e623549b0e21f6e97cf8ecf247c1a8fd2e8a992ae265314300b2455d5c",
        strip_prefix = "rand_xorshift-0.1.1",
        build_file = Label("//cargo/remote:rand_xorshift-0.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__rayon__1_0_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rayon/rayon-1.0.3.crate",
        type = "tar.gz",
        sha256 = "373814f27745b2686b350dd261bfd24576a6fb0e2c5919b3a2b6005f820b0473",
        strip_prefix = "rayon-1.0.3",
        build_file = Label("//cargo/remote:rayon-1.0.3.BUILD")
    )

    _new_http_archive(
        name = "raze__rayon_core__1_4_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rayon-core/rayon-core-1.4.1.crate",
        type = "tar.gz",
        sha256 = "b055d1e92aba6877574d8fe604a63c8b5df60f60e5982bf7ccbb1338ea527356",
        strip_prefix = "rayon-core-1.4.1",
        build_file = Label("//cargo/remote:rayon-core-1.4.1.BUILD")
    )

    _new_http_archive(
        name = "raze__rdrand__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rdrand/rdrand-0.4.0.crate",
        type = "tar.gz",
        sha256 = "678054eb77286b51581ba43620cc911abf02758c91f93f479767aed0f90458b2",
        strip_prefix = "rdrand-0.4.0",
        build_file = Label("//cargo/remote:rdrand-0.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__rustc_demangle__0_1_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rustc-demangle/rustc-demangle-0.1.13.crate",
        type = "tar.gz",
        sha256 = "adacaae16d02b6ec37fdc7acfcddf365978de76d1983d3ee22afc260e1ca9619",
        strip_prefix = "rustc-demangle-0.1.13",
        build_file = Label("//cargo/remote:rustc-demangle-0.1.13.BUILD")
    )

    _new_http_archive(
        name = "raze__rustc_hash__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rustc-hash/rustc-hash-1.0.1.crate",
        type = "tar.gz",
        sha256 = "7540fc8b0c49f096ee9c961cda096467dce8084bec6bdca2fc83895fd9b28cb8",
        strip_prefix = "rustc-hash-1.0.1",
        build_file = Label("//cargo/remote:rustc-hash-1.0.1.BUILD")
    )

    _new_http_archive(
        name = "raze__rustc_version__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rustc_version/rustc_version-0.2.3.crate",
        type = "tar.gz",
        sha256 = "138e3e0acb6c9fb258b19b67cb8abd63c00679d2851805ea151465464fe9030a",
        strip_prefix = "rustc_version-0.2.3",
        build_file = Label("//cargo/remote:rustc_version-0.2.3.BUILD")
    )

    _new_http_archive(
        name = "raze__rusttype__0_7_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rusttype/rusttype-0.7.5.crate",
        type = "tar.gz",
        sha256 = "ce3926a2057b315b3e8bca6d1cec1e97f19436a8f9127621cd538cda9c96a38b",
        strip_prefix = "rusttype-0.7.5",
        build_file = Label("//cargo/remote:rusttype-0.7.5.BUILD")
    )

    _new_http_archive(
        name = "raze__same_file__1_0_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/same-file/same-file-1.0.4.crate",
        type = "tar.gz",
        sha256 = "8f20c4be53a8a1ff4c1f1b2bd14570d2f634628709752f0702ecdd2b3f9a5267",
        strip_prefix = "same-file-1.0.4",
        build_file = Label("//cargo/remote:same-file-1.0.4.BUILD")
    )

    _new_http_archive(
        name = "raze__scopeguard__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/scopeguard/scopeguard-0.3.3.crate",
        type = "tar.gz",
        sha256 = "94258f53601af11e6a49f722422f6e3425c52b06245a5cf9bc09908b174f5e27",
        strip_prefix = "scopeguard-0.3.3",
        build_file = Label("//cargo/remote:scopeguard-0.3.3.BUILD")
    )

    _new_http_archive(
        name = "raze__semver__0_9_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/semver/semver-0.9.0.crate",
        type = "tar.gz",
        sha256 = "1d7eb9ef2c18661902cc47e535f9bc51b78acd254da71d375c2f6720d9a40403",
        strip_prefix = "semver-0.9.0",
        build_file = Label("//cargo/remote:semver-0.9.0.BUILD")
    )

    _new_http_archive(
        name = "raze__semver_parser__0_7_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/semver-parser/semver-parser-0.7.0.crate",
        type = "tar.gz",
        sha256 = "388a1df253eca08550bef6c72392cfe7c30914bf41df5269b68cbd6ff8f570a3",
        strip_prefix = "semver-parser-0.7.0",
        build_file = Label("//cargo/remote:semver-parser-0.7.0.BUILD")
    )

    _new_http_archive(
        name = "raze__serde__1_0_89",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde/serde-1.0.89.crate",
        type = "tar.gz",
        sha256 = "92514fb95f900c9b5126e32d020f5c6d40564c27a5ea6d1d7d9f157a96623560",
        strip_prefix = "serde-1.0.89",
        build_file = Label("//cargo/remote:serde-1.0.89.BUILD")
    )

    _new_http_archive(
        name = "raze__serde_derive__1_0_89",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_derive/serde_derive-1.0.89.crate",
        type = "tar.gz",
        sha256 = "bb6eabf4b5914e88e24eea240bb7c9f9a2cbc1bbbe8d961d381975ec3c6b806c",
        strip_prefix = "serde_derive-1.0.89",
        build_file = Label("//cargo/remote:serde_derive-1.0.89.BUILD")
    )

    _new_http_archive(
        name = "raze__slog__2_4_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/slog/slog-2.4.1.crate",
        type = "tar.gz",
        sha256 = "1e1a2eec401952cd7b12a84ea120e2d57281329940c3f93c2bf04f462539508e",
        strip_prefix = "slog-2.4.1",
        build_file = Label("//cargo/remote:slog-2.4.1.BUILD")
    )

    _new_http_archive(
        name = "raze__slog_scope__4_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/slog-scope/slog-scope-4.1.1.crate",
        type = "tar.gz",
        sha256 = "60c04b4726fa04595ccf2c2dad7bcd15474242c4c5e109a8a376e8a2c9b1539a",
        strip_prefix = "slog-scope-4.1.1",
        build_file = Label("//cargo/remote:slog-scope-4.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__slog_stdlog__3_0_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/slog-stdlog/slog-stdlog-3.0.2.crate",
        type = "tar.gz",
        sha256 = "ac42f8254ae996cc7d640f9410d3b048dcdf8887a10df4d5d4c44966de24c4a8",
        strip_prefix = "slog-stdlog-3.0.2",
        build_file = Label("//cargo/remote:slog-stdlog-3.0.2.BUILD")
    )

    _new_http_archive(
        name = "raze__smallvec__0_6_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/smallvec/smallvec-0.6.9.crate",
        type = "tar.gz",
        sha256 = "c4488ae950c49d403731982257768f48fada354a5203fe81f9bb6f43ca9002be",
        strip_prefix = "smallvec-0.6.9",
        build_file = Label("//cargo/remote:smallvec-0.6.9.BUILD")
    )

    _new_http_archive(
        name = "raze__smithay_client_toolkit__0_4_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/smithay-client-toolkit/smithay-client-toolkit-0.4.5.crate",
        type = "tar.gz",
        sha256 = "aa4899558362a65589b53313935099835acf999740915e134dff20cca7c6a28b",
        strip_prefix = "smithay-client-toolkit-0.4.5",
        build_file = Label("//cargo/remote:smithay-client-toolkit-0.4.5.BUILD")
    )

    _new_http_archive(
        name = "raze__stable_deref_trait__1_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/stable_deref_trait/stable_deref_trait-1.1.1.crate",
        type = "tar.gz",
        sha256 = "dba1a27d3efae4351c8051072d619e3ade2820635c3958d826bfea39d59b54c8",
        strip_prefix = "stable_deref_trait-1.1.1",
        build_file = Label("//cargo/remote:stable_deref_trait-1.1.1.BUILD")
    )

    _new_http_archive(
        name = "raze__stb_truetype__0_2_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/stb_truetype/stb_truetype-0.2.6.crate",
        type = "tar.gz",
        sha256 = "69b7df505db8e81d54ff8be4693421e5b543e08214bd8d99eb761fcb4d5668ba",
        strip_prefix = "stb_truetype-0.2.6",
        build_file = Label("//cargo/remote:stb_truetype-0.2.6.BUILD")
    )

    _new_http_archive(
        name = "raze__syn__0_15_29",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/syn/syn-0.15.29.crate",
        type = "tar.gz",
        sha256 = "1825685f977249735d510a242a6727b46efe914bb67e38d30c071b1b72b1d5c2",
        strip_prefix = "syn-0.15.29",
        build_file = Label("//cargo/remote:syn-0.15.29.BUILD")
    )

    _new_http_archive(
        name = "raze__unicode_xid__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-xid/unicode-xid-0.1.0.crate",
        type = "tar.gz",
        sha256 = "fc72304796d0818e357ead4e000d19c9c174ab23dc11093ac919054d20a6a7fc",
        strip_prefix = "unicode-xid-0.1.0",
        build_file = Label("//cargo/remote:unicode-xid-0.1.0.BUILD")
    )

    _new_http_archive(
        name = "raze__void__1_0_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/void/void-1.0.2.crate",
        type = "tar.gz",
        sha256 = "6a02e4885ed3bc0f2de90ea6dd45ebcbb66dacffe03547fadbb0eeae2770887d",
        strip_prefix = "void-1.0.2",
        build_file = Label("//cargo/remote:void-1.0.2.BUILD")
    )

    _new_http_archive(
        name = "raze__walkdir__2_2_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/walkdir/walkdir-2.2.7.crate",
        type = "tar.gz",
        sha256 = "9d9d7ed3431229a144296213105a390676cc49c9b6a72bd19f3176c98e129fa1",
        strip_prefix = "walkdir-2.2.7",
        build_file = Label("//cargo/remote:walkdir-2.2.7.BUILD")
    )

    _new_http_archive(
        name = "raze__wayland_client__0_21_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/wayland-client/wayland-client-0.21.11.crate",
        type = "tar.gz",
        sha256 = "96041810afa07e7953867d46f8f03c41cbca49ebd1e840eef6abefde8b458b30",
        strip_prefix = "wayland-client-0.21.11",
        build_file = Label("//cargo/remote:wayland-client-0.21.11.BUILD")
    )

    _new_http_archive(
        name = "raze__wayland_commons__0_21_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/wayland-commons/wayland-commons-0.21.11.crate",
        type = "tar.gz",
        sha256 = "92af0c5dc724c049e9bd927f8563d9a6abaa94893c5305ef0a6d2805e661f3d3",
        strip_prefix = "wayland-commons-0.21.11",
        build_file = Label("//cargo/remote:wayland-commons-0.21.11.BUILD")
    )

    _new_http_archive(
        name = "raze__wayland_protocols__0_21_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/wayland-protocols/wayland-protocols-0.21.11.crate",
        type = "tar.gz",
        sha256 = "fd94211387fa8ff50df1e4ff7a5529b5a9aebe68ba88acc48e5b7f5fd98f6eef",
        strip_prefix = "wayland-protocols-0.21.11",
        build_file = Label("//cargo/remote:wayland-protocols-0.21.11.BUILD")
    )

    _new_http_archive(
        name = "raze__wayland_scanner__0_21_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/wayland-scanner/wayland-scanner-0.21.11.crate",
        type = "tar.gz",
        sha256 = "3611f231e675e15c2feb7623103e6449edc6f10b0598cafb3e16e590a0561355",
        strip_prefix = "wayland-scanner-0.21.11",
        build_file = Label("//cargo/remote:wayland-scanner-0.21.11.BUILD")
    )

    _new_http_archive(
        name = "raze__wayland_sys__0_21_11",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/wayland-sys/wayland-sys-0.21.11.crate",
        type = "tar.gz",
        sha256 = "2a69d729a1747a5bf40ae05b94c7904b64fbf2381e365c046d872ce4a34aa826",
        strip_prefix = "wayland-sys-0.21.11",
        build_file = Label("//cargo/remote:wayland-sys-0.21.11.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi__0_3_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi/winapi-0.3.6.crate",
        type = "tar.gz",
        sha256 = "92c1eb33641e276cfa214a0522acad57be5c56b10cb348b3c5117db75f3ac4b0",
        strip_prefix = "winapi-0.3.6",
        build_file = Label("//cargo/remote:winapi-0.3.6.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-i686-pc-windows-gnu/winapi-i686-pc-windows-gnu-0.4.0.crate",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//cargo/remote:winapi-i686-pc-windows-gnu-0.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi_util__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-util/winapi-util-0.1.2.crate",
        type = "tar.gz",
        sha256 = "7168bab6e1daee33b4557efd0e95d5ca70a03706d39fa5f3fe7a236f584b03c9",
        strip_prefix = "winapi-util-0.1.2",
        build_file = Label("//cargo/remote:winapi-util-0.1.2.BUILD")
    )

    _new_http_archive(
        name = "raze__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-x86_64-pc-windows-gnu/winapi-x86_64-pc-windows-gnu-0.4.0.crate",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//cargo/remote:winapi-x86_64-pc-windows-gnu-0.4.0.BUILD")
    )

    _new_http_archive(
        name = "raze__winit__0_18_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winit/winit-0.18.1.crate",
        type = "tar.gz",
        sha256 = "8c57c15bd4c0ef18dff33e263e452abe32d00e2e05771cacaa410a14cc1c0776",
        strip_prefix = "winit-0.18.1",
        build_file = Label("//cargo/remote:winit-0.18.1.BUILD")
    )

    _new_http_archive(
        name = "raze__x11_dl__2_18_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/x11-dl/x11-dl-2.18.3.crate",
        type = "tar.gz",
        sha256 = "940586acb859ea05c53971ac231685799a7ec1dee66ac0bccc0e6ad96e06b4e3",
        strip_prefix = "x11-dl-2.18.3",
        build_file = Label("//cargo/remote:x11-dl-2.18.3.BUILD")
    )

    _new_http_archive(
        name = "raze__xdg__2_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/xdg/xdg-2.2.0.crate",
        type = "tar.gz",
        sha256 = "d089681aa106a86fade1b0128fb5daf07d5867a509ab036d99988dec80429a57",
        strip_prefix = "xdg-2.2.0",
        build_file = Label("//cargo/remote:xdg-2.2.0.BUILD")
    )

    _new_http_archive(
        name = "raze__xml_rs__0_8_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/xml-rs/xml-rs-0.8.0.crate",
        type = "tar.gz",
        sha256 = "541b12c998c5b56aa2b4e6f18f03664eef9a4fd0a246a55594efae6cc2d964b5",
        strip_prefix = "xml-rs-0.8.0",
        build_file = Label("//cargo/remote:xml-rs-0.8.0.BUILD")
    )

