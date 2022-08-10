// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "deliveryhero-softphonefacade",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SdkFacade",
            targets: ["SoftphoneFacadeTargets"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "saas", url: "https://github.com/acrobits/SoftphoneSwiftPackage-saas-local", .exact("1.0.180710"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "SoftphoneFacadeTargets",
               dependencies: [
                              .target(name: "SoftphoneFacade"),
                              .product(name: "SoftphoneSwiftPackage-saas-local", package: "saas")
                              ]),
        .binaryTarget(
            name: "SoftphoneFacade",
            url: "https://dist.acrobits.cz/deliveryhero-softphonefacade/SoftphoneFacade.xcframework-1807312.zip",
            checksum: "2fa32e8cdc6474104ad78cb77172ee65ff9eab665bd50a4efb78456319d431e1")

    ]
)
