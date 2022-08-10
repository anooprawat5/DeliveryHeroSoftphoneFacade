// swift-tools-version:5.3
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
                      url: "https://dist.acrobits.cz/deliveryhero-softphonefacade/SoftphoneFacade.xcframework-1807200.zip",
                      checksum: "d76e48107b2e3a654b2a379e2f71a03e59b137c4d1a8b2d521c123f5968d4771"
                     ),

    ]
)
