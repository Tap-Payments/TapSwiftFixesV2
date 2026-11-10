// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "TapSwiftFixesV2",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "TapSwiftFixesV2",
            targets: ["TapSwiftFixesV2"]
        )
    ],
    targets: [
        .target(
            name: "TapSwiftFixesV2ObjC",
            path: "Sources/TapSwiftFixesV2ObjC",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ],
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("UIKit", .when(platforms: [.iOS]))
            ]
        ),
        .target(
            name: "TapSwiftFixesV2",
            dependencies: ["TapSwiftFixesV2ObjC"],
            path: "Sources/TapSwiftFixesV2"
        )
    ]
)

