// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "NetworkKit",
  platforms: [
	.macOS(.v10_13), .iOS(.v10),
  ],
  products: [
    .library(name: "NetworkKit", targets: ["NetworkKit"]),
    ],
	dependencies: [
    ],
  targets: [
    .target(name: "NetworkKit", dependencies: []),
    .testTarget(name: "NetworkKitTests", dependencies: ["NetworkKit"]),
    ]
)
