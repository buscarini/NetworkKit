// swift-tools-version:4.2

import PackageDescription

let package = Package(
  name: "NetworkKit",
  products: [
    .library(name: "NetworkKit", targets: ["NetworkKit"]),
    ],
	dependencies: [
    ],
  targets: [
    .target(name: "NetworkKit", dependencies: []),
    .testTarget(name: "NetworkKitTests", dependencies: ["NetworkKit"]),
    ],
   swiftLanguageVersions: [.v4_2]
)
