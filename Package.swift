// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "AppvestorStatsFramework",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AppvestorStatsFramework",
            targets: ["AppvestorStatsFramework"]),
    ],
    targets: [
        .binaryTarget(
            name: "AppvestorStatsFramework",
            url: "https://github.com/nwudoebuka/pocspm/releases/download/1.0.0/AppvestorStatsFramework.xcframework.zip",
            checksum: "097569db85dfbec3c366403c065a20e30151ce59d5cbeef4293f81f2c3afd03d"
        ),
                .testTarget(
                    name: "AppvestorStatsFrameworkTests",
                    dependencies: ["AppvestorStatsFramework"]
                ),
    ]
)
