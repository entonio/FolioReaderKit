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
        .package(url: "https://github.com/ZipArchive/ZipArchive.git", exact: "2.1.1"),
        .package(url: "https://github.com/cxa/MenuItemKit.git", exact: "3.1.3"),
        .package(url: "https://github.com/entonio/ZFDragableModalTransition.git", branch: "master"),
        .package(url: "https://github.com/tadija/AEXML.git", branch: "master"),
        .package(url: "https://github.com/ArtSabintsev/FontBlaster.git", from: "5.3.0"),
        .package(url: "https://github.com/realm/realm-swift.git", from: "10.54.4")
    ],
    targets: [
        .target(
            name: "FolioReaderKit",
            dependencies: [
                "SSZipArchive",
                "MenuItemKit",
                "ZFDragableModalTransition",
                "AEXML",
                "FontBlaster",
				"RealmSwift"
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
