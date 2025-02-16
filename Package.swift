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
            checksum: "2271d795ae691658c9ca4e54d366b67fc4cde10f2c838d9508b37f3a7b9d7d26"
        ),
                .testTarget(
                    name: "AppvestorStatsFrameworkTests",
                    dependencies: ["AppvestorStatsFramework"]
                ),
    ]
)
