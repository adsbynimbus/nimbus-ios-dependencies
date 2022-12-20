// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "nimbus-ios-dependencies",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "GoogleInteractiveMediaAds", targets: ["GoogleInteractiveMediaAds"]),
        .library(name: "OMSDKAdsbynimbus", targets: ["OMSDKAdsbynimbus"]),
        .library(name: "DTBiOSSDK", targets: ["DTBiOSSDK"]),
        .library(name: "FBAudienceNetwork", targets: ["FBAudienceNetwork"]),
        .library(name: "UnityAds", targets: ["UnityAds"]),
    ],
    targets: [
        .binaryTarget(
            name: "GoogleInteractiveMediaAds",
            url: "https://imasdk.googleapis.com/native/downloads/ima-ios-v3.16.3.zip",
            checksum: "049bac92551b50247ea14dcbfde9aeb99ac2bea578a74f67c6f3e781d9aca101"),
        .binaryTarget(
            name: "OMSDKAdsbynimbus",
            url: "https://adsbynimbus-public.s3.amazonaws.com/iOS/external/omsdk/1.4.0/omsdk-adsbynimbus-1.4.0.zip",
            checksum: "736e996210bbd959fb563421b6328c4027b3349bc20772f3d7c83c4f426e3a94"),
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
