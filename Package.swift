// swift-tools-version:6.1.0

import PackageDescription
import Foundation
import CompilerPluginSupport

let package = Package(
    name: "SwiftUIZ",
    platforms: [.iOS("16.0"), .macOS("13.0")],
    products: [
        .library(
            name: "SwiftUIZ",
            targets: ["SwiftUIZ_PrecompiledProduct"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-precompiled/SwiftUI-Introspect",
            exact: "1.3.0"
        ),
        .package(
            url: "https://github.com/swift-precompiled/SwiftUIX",
            branch: "master"
        ),
        .package(
            url: "https://github.com/swift-precompiled/CorePersistence",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-precompiled/Merge",
            branch: "master"
        ),
        .package(
            url: "https://github.com/swift-precompiled/Swallow",
            branch: "master"
        )
    ],
    targets: [
        .macro(
            name: "SwiftUIZ_Macros",
            path: "Macros/SwiftUIZ_Macros"
        ),
        .target(
            name: "_UniversalDisplayLink_Aggregation",
            dependencies: ["_UniversalDisplayLink"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_UniversalDisplayLink",
            url: "https://github.com/swift-precompiled/SwiftUIZ/releases/download/main-6857db38cb555cb5687ca749b2dd6ce18efeffe0/_UniversalDisplayLink-d845e48d78947ee4c10c4ff66acb487298b37feeaac3308aa2b7ea9f4662d647.xcframework.zip",
            checksum: "d845e48d78947ee4c10c4ff66acb487298b37feeaac3308aa2b7ea9f4662d647"
        ),
        .target(
            name: "_SwiftUI_Internals_Aggregation",
            dependencies: ["_SwiftUI_Internals"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwiftUI_Internals",
            url: "https://github.com/swift-precompiled/SwiftUIZ/releases/download/main-6857db38cb555cb5687ca749b2dd6ce18efeffe0/_SwiftUI_Internals-3fd9ca253974d8ede444dc7ef58d9715bee41f803343d930f1b9c0246c5f7f8e.xcframework.zip",
            checksum: "3fd9ca253974d8ede444dc7ef58d9715bee41f803343d930f1b9c0246c5f7f8e"
        ),
        .target(
            name: "_SwiftUIZ_Nuke_Aggregation",
            dependencies: ["_SwiftUIZ_Nuke"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwiftUIZ_Nuke",
            url: "https://github.com/swift-precompiled/SwiftUIZ/releases/download/main-6857db38cb555cb5687ca749b2dd6ce18efeffe0/_SwiftUIZ_Nuke-28f73f1663664c4de400d58796b1853388f16475f7f3075437e3c1f6dc0fbcca.xcframework.zip",
            checksum: "28f73f1663664c4de400d58796b1853388f16475f7f3075437e3c1f6dc0fbcca"
        ),
        .target(
            name: "_SwiftUIZ_NukeUI_Aggregation",
            dependencies: ["_SwiftUIZ_NukeUI"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwiftUIZ_NukeUI",
            url: "https://github.com/swift-precompiled/SwiftUIZ/releases/download/main-6857db38cb555cb5687ca749b2dd6ce18efeffe0/_SwiftUIZ_NukeUI-a2950b3a639e2c45733cb5e2beb18a3b553247f5ef00377ada8de4e236383287.xcframework.zip",
            checksum: "a2950b3a639e2c45733cb5e2beb18a3b553247f5ef00377ada8de4e236383287"
        ),
        .target(
            name: "Engine_Aggregation",
            dependencies: ["Engine"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Engine",
            url: "https://github.com/swift-precompiled/SwiftUIZ/releases/download/main-6857db38cb555cb5687ca749b2dd6ce18efeffe0/Engine-557c991ff9abadeee4a13286128189a13afd5a34674194fe96bba5dd2aea4130.xcframework.zip",
            checksum: "557c991ff9abadeee4a13286128189a13afd5a34674194fe96bba5dd2aea4130"
        ),
        .target(
            name: "EngineCore_Aggregation",
            dependencies: ["EngineCore"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "EngineCore",
            url: "https://github.com/swift-precompiled/SwiftUIZ/releases/download/main-6857db38cb555cb5687ca749b2dd6ce18efeffe0/EngineCore-c70e41a3aaf3ee931041d004a611e8abdebc6bb001616acf92d96813a8eae1e8.xcframework.zip",
            checksum: "c70e41a3aaf3ee931041d004a611e8abdebc6bb001616acf92d96813a8eae1e8"
        ),
        .target(
            name: "EngineCoreC",
            dependencies: ["EngineCoreC_PrecompiledArchive"],
            path: "Sources/EngineCoreC",
            sources: ["Empty.c"],
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "EngineCoreC_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/SwiftUIZ/releases/download/main-6857db38cb555cb5687ca749b2dd6ce18efeffe0/EngineCoreC-371c45522e17f135a0dd10f9e71b75ba153cc8b3055524e66f10a5b7fd53d883.xcframework.zip",
            checksum: "371c45522e17f135a0dd10f9e71b75ba153cc8b3055524e66f10a5b7fd53d883"
        ),
        .target(
            name: "_SwiftUIZ_A_Aggregation",
            dependencies: ["_SwiftUIZ_A"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwiftUIZ_A",
            url: "https://github.com/swift-precompiled/SwiftUIZ/releases/download/main-6857db38cb555cb5687ca749b2dd6ce18efeffe0/_SwiftUIZ_A-17e8461fff7bd75f8498b7f073e9a372c6d26c6f32bc9c5868639e3e79bc9e18.xcframework.zip",
            checksum: "17e8461fff7bd75f8498b7f073e9a372c6d26c6f32bc9c5868639e3e79bc9e18"
        ),
        .target(
            name: "_SwiftUIZ_B_Aggregation",
            dependencies: ["_SwiftUIZ_B"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwiftUIZ_B",
            url: "https://github.com/swift-precompiled/SwiftUIZ/releases/download/main-6857db38cb555cb5687ca749b2dd6ce18efeffe0/_SwiftUIZ_B-83d1a8b18eea7d01f1efcbd92cdbbbf1da9a9bf12786ae6f90b5fe47f089e41a.xcframework.zip",
            checksum: "83d1a8b18eea7d01f1efcbd92cdbbbf1da9a9bf12786ae6f90b5fe47f089e41a"
        ),
        .target(
            name: "SwiftUIZ_Aggregation",
            dependencies: ["SwiftUIZ"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftUIZ",
            url: "https://github.com/swift-precompiled/SwiftUIZ/releases/download/main-6857db38cb555cb5687ca749b2dd6ce18efeffe0/SwiftUIZ-f0b34140a531a5cfa4dc49a136007888e5b1dfc185ef4b5db5cd305e39deee2b.xcframework.zip",
            checksum: "f0b34140a531a5cfa4dc49a136007888e5b1dfc185ef4b5db5cd305e39deee2b"
        ),
        .target(
            name: "SwiftUIZ_PrecompiledProduct",
            dependencies: [
                "_SwiftUI_Internals_Aggregation",
                .product(
                    name: "Swallow",
                    package: "Swallow"
                ),
                .product(
                    name: "SwiftUIX",
                    package: "SwiftUIX"
                ),
                "_SwiftUIZ_Nuke_Aggregation",
                "_SwiftUIZ_NukeUI_Aggregation",
                "_UniversalDisplayLink_Aggregation",
                "_SwiftUIZ_A_Aggregation",
                .product(
                    name: "CorePersistence",
                    package: "CorePersistence"
                ),
                .product(
                    name: "Merge",
                    package: "Merge"
                ),
                .product(
                    name: "SwallowMacrosClient",
                    package: "Swallow"
                ),
                .product(
                    name: "SwiftUIIntrospect",
                    package: "SwiftUI-Introspect"
                ),
                "SwiftUIZ_Macros",
                "_SwiftUIZ_B_Aggregation",
                "Engine_Aggregation",
                "EngineCore_Aggregation",
                "EngineCoreC",
                "SwiftUIZ_Aggregation"
            ]
        )
    ]
)