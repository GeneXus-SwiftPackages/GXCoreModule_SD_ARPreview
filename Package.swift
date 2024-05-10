// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_ARPreview",
	platforms: [.iOS("12.0"), .watchOS("9.0"), .tvOS("12.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_ARPreview",
			targets: ["GXCoreModule_SD_ARPreviewWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.0.0-beta.28")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_ARPreview-2.0.0-beta.28.xcframework.zip",
			checksum: "c9e1d4192aff6d60e9c1362824d3c16357e700d7f8dceae2d52190fe87e93746"
		)
	]
)