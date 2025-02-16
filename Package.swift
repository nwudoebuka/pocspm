//// swift-tools-version: 6.0
//import PackageDescription
//
//let package = Package(
//    name: "AppvestorStatsFramework",
//    platforms: [.iOS(.v12)], // Ensure it supports at least iOS 12+
//    products: [
//        .library(
//            name: "AppvestorStatsFramework",
//            targets: ["Appvestor_iOS_Stats"] // ✅ Use the wrapper target
//        ),
//    ],
//    targets: [
//        // ✅ The binary XCFramework
//        .binaryTarget(
//            name: "AppvestorStatsFramework",
//            url: "https://appsutil.com/AppvestorStatsFramework.xcframework.zip",
//            checksum: "65157cd568686de1591f7e42539aa01dc6ee47a730c956c5fb649b97b81433e0"
//        ),
//        // ✅ A wrapper target to expose the binary framework
//        .target(
//            name: "Appvestor_iOS_Stats",
//            dependencies: ["AppvestorStatsFramework"], // ✅ Link to the binary framework
//            path: "Sources/Appvestor_iOS_Stats",
//            linkerSettings: [
//                .linkedFramework("AppvestorStatsFramework") // ✅ Ensures linking at build time
//            ]
//        ),
//        .testTarget(
//            name: "Appvestor_iOS_StatsTests",
//            dependencies: ["Appvestor_iOS_Stats"]
//        ),
//    ]
//)
//



// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "Appvestor_iOS_Stats",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "Appvestor_iOS_Stats",
            targets: ["Appvestor_iOS_Stats"]),
    ],
    targets: [
        .binaryTarget(
            name: "Appvestor_iOS_Stats",
            url: "https://github.com/nwudoebuka/pocspm/releases/download/1.0.0/AppvestorStatsFramework.xcframework.zip",
            checksum: "2271d795ae691658c9ca4e54d366b67fc4cde10f2c838d9508b37f3a7b9d7d26"
        ),
                .testTarget(
                    name: "Appvestor_iOS_StatsTests",
                    dependencies: ["Appvestor_iOS_Stats"]
                ),
    ]
)
