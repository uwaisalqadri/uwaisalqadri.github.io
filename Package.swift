// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "West",
    products: [
        .executable(name: "West", targets: ["West"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.8.0")
    ],
    targets: [
        .executableTarget(
            name: "West",
            dependencies: [
                .product(name: "Publish", package: "publish")
            ]
        )
    ]
)
