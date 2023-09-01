// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_ARPreview",
	platforms: [.iOS("12.0"), .watchOS("5.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_ARPreview",
			targets: ["GXCoreModule_SD_ARPreviewWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.2.0-beta.17")
	],
	targets: [
		.target(name: "GXCoreModule_SD_ARPreviewWrapper",
				dependencies: [
					"GXCoreModule_SD_ARPreview",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_ARPreview",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_ARPreview-1.2.0-beta.17.xcframework.zip",
			checksum: "476b9aa0e1a55229cb209627cceb2ad568ab82c668c21ecfefc5fe3aa714ba7f"
		)
	]
)