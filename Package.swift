// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DeepLinkKit",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "DeepLinkKit",
            targets: ["DeepLinkKit"]
        ),
    ],
    targets: [
        .target(
            name: "DeepLinkKit",
            path: "Sources",
            exclude: [
                "DeepLinkKit/Info.plist",
                "DeepLinkKit/DeepLinkKit_Private.h",
                "DeepLinkKit/DeepLink/DPLDeepLink_Private.h"
            ],
            sources: ["DeepLinkKit"],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("DeepLinkKit"),
                .headerSearchPath("DeepLinkKit/Categories"),
                .headerSearchPath("DeepLinkKit/DeepLink"),
                .headerSearchPath("DeepLinkKit/Errors"),
                .headerSearchPath("DeepLinkKit/Protocols"),
                .headerSearchPath("DeepLinkKit/Regex"),
                .headerSearchPath("DeepLinkKit/RouteHandler"),
                .headerSearchPath("DeepLinkKit/RouteMatcher"),
                .headerSearchPath("DeepLinkKit/Router"),
                .define("SWIFT_PACKAGE")
            ]
        ),
    ]
)
