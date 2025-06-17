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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.1.1")
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
			url: "https://pkgs.genexus.dev/iOS/releases/GXCoreModule_SD_ARPreview-3.1.1.xcframework.zip",
			checksum: "0291c9eb46329a0987f0b109c3546c2630fa98947ea91ab97a68b7a16cd96419"
		)
	]
)