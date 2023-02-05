// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "nimbus-ios-dependencies",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "GoogleInteractiveMediaAds", targets: ["GoogleInteractiveMediaAdsTarget"]),
        .library(name: "OMSDK_Adsbynimbus", targets: ["OMSDK_AdsbynimbusTarget"]),
        .library(name: "DTBiOSSDK", targets: ["DTBiOSSDKTarget"]),
        .library(name: "FBAudienceNetwork", targets: ["FBAudienceNetworkTarget"]),
        .library(name: "UnityAds", targets: ["UnityAdsTarget"]),
    ],
    targets: [
        .target(
            name: "GoogleInteractiveMediaAdsTarget",
            dependencies: [.target(name: "GoogleInteractiveMediaAds")],
            path: "GoogleInteractiveMediaAds",
            linkerSettings: [.linkedFramework("GoogleInteractiveMediaAds")]),
        .target(
            name: "OMSDK_AdsbynimbusTarget",
            dependencies: [.target(name: "OMSDK_Adsbynimbus")],
            path: "OMSDK_Adsbynimbus",
            linkerSettings: [.linkedFramework("OMSDK_Adsbynimbus")]),
        .target(
            name: "DTBiOSSDKTarget",
            dependencies: [.target(name: "DTBiOSSDK")],
            path: "DTBiOSSDK",
            linkerSettings: [.linkedFramework("DTBiOSSDK")]),
        .target(
            name: "FBAudienceNetworkTarget",
            dependencies: [.target(name: "FBAudienceNetwork")],
            path: "FBAudienceNetwork",
            linkerSettings: [.linkedFramework("FBAudienceNetwork")]),
        .target(
            name: "UnityAdsTarget",
            dependencies: [.target(name: "UnityAds")],
            path: "UnityAds",
            linkerSettings: [.linkedFramework("UnityAds")]),
        .binaryTarget(
            name: "GoogleInteractiveMediaAds",
            url: "https://imasdk.googleapis.com/native/downloads/ima-ios-v3.16.3.zip",
            checksum: "049bac92551b50247ea14dcbfde9aeb99ac2bea578a74f67c6f3e781d9aca101"),
        .binaryTarget(
            name: "OMSDK_Adsbynimbus",
            url: "https://adsbynimbus-public.s3.amazonaws.com/iOS/external/omsdk/1.4.2/omsdk-adsbynimbus-1.4.2.zip",
            checksum: "d42443a5d19a34418976945d8afcd11f25d471fa3178f80eba1c3f6035c0ad24"),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://mdtb-sdk-packages.s3.us-west-2.amazonaws.com/iOS_APS_SDK/APS_iOS_SDK-4.5.5.zip",
            checksum: "0aaf4f92ace01441501f45a9d7fd4614d5e496ab925f6b84b4a1d96e9a65ba29"),
        .binaryTarget(
            name: "FBAudienceNetwork",
            url: "https://adsbynimbus-public.s3.amazonaws.com/iOS/external/facebook/6.12.0/FBAudienceNetwork.zip",
            checksum: "4bf37ee5949de007349d85b069da1095a30e82e696e72642dfe117aba08a86a2"),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.4.1/UnityAds.zip",
            checksum: "8196b13a0a5eae6ba817e2e7fc9096a584f22aedb1958980d2064955e448d5ad"),
    ]
)
