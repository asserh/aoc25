// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "Aoc25",
    targets: [
        .executableTarget(
            name: "Aoc25",
            resources: [
                .process("Input")
            ]
        ),
        .testTarget(
            name: "Aoc25Tests",
            dependencies: ["Aoc25"]
        ),
    ]
)
