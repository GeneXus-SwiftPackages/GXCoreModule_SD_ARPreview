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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.0.0-beta.20230704143346")
	],
	targets: [
		.target(name: "GXCoreModule_SD_ARPreviewWrapper",
				dependencies: [
					"GXCoreModule_SD_ARPreview",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.tvOS, .watchOS, .iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_ARPreview",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_ARPreview-1.0.0-beta.20230704143346.xcframework.zip",
			checksum: "b973d30a62f2f8d9d879aae70e8d0d2cbd45637817c4a670e5862838f4389b44"
		)
	]
)