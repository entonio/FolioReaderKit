// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "FolioReaderKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "FolioReaderKit",
            targets: ["FolioReaderKit"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ZipArchive/ZipArchive.git", branch: "master"),
        .package(url: "https://github.com/cxa/MenuItemKit.git", branch: "master"),
        .package(url: "https://github.com/entonio/ZFDragableModalTransition.git", branch: "master"),
        .package(url: "https://github.com/tadija/AEXML.git", branch: "master"),
        .package(url: "https://github.com/ArtSabintsev/FontBlaster.git", branch: "master"),
        .package(url: "https://github.com/realm/realm-swift.git", from: "10.48.0")
    ],
    targets: [
        .target(
            name: "FolioReaderKit",
            dependencies: [
                "ZipArchive",
                "MenuItemKit",
                "ZFDragableModalTransition",
                "AEXML",
                "FontBlaster",
				"realm-swift"
            ],
            path: "Source",
            exclude: [],
            resources: [
                .process("Source/**/*.{js,css}"),
                .process("Source/Resources/*.xcassets"),
                .process("Source/Resources/Fonts/**/*.{otf,ttf}")
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("Source")
            ]
        )
    ]
)
