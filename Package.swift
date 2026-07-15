// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_ARPreview",
	platforms: [.iOS("15.0"), .watchOS("10.0"), .tvOS("18.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_ARPreview",
			targets: ["GXCoreModule_SD_ARPreviewWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.2.0-rc.34")
	],
	targets: [
		.target(name: "GXCoreModule_SD_ARPreviewWrapper",
				dependencies: [
					"GXCoreModule_SD_ARPreview",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_ARPreview",
			url: "https://pkgs.genexus.dev/iOS/preview/GXCoreModule_SD_ARPreview-4.2.0-rc.34.xcframework.zip",
			checksum: "d8a28f61115232cb17e9b0e87f468fceff62a5568115fb5ac2c6e9bb68c0aa7e"
		)
	]
)