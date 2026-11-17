// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "qr_code_scanner",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(name: "qr-code-scanner", targets: ["qr_code_scanner"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "qr_code_scanner",
            dependencies: [
                "MTBBarcodeScanner",
                .product(name: "FlutterFramework", package: "FlutterFramework"),
            ],
            resources: []
        ),
        // Vendored copy of https://github.com/mikebuss/MTBBarcodeScanner (MIT),
        // which is not available as a Swift package.
        .target(
            name: "MTBBarcodeScanner",
            exclude: ["LICENSE"],
            publicHeadersPath: "include",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("QuartzCore"),
            ]
        ),
    ]
)
