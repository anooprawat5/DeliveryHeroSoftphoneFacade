// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "deliveryhero-softphonefacade",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SdkFacade",
            targets: ["SoftphoneFacade"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "SoftphoneFacade",
                      url: "https://dist.acrobits.cz/deliveryhero-softphonefacade/SoftphoneFacade.xcframework-1806364.zip",
                      checksum: "5f19b0f196b05ee9ac5619d5b09b571f3b43103471b513ce374af5727c414e32"
                     ),

    ]
)
