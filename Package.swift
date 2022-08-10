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
        .binaryTarget(
            name: "SoftphoneFacade",
            url: "https://dist.acrobits.cz/deliveryhero-softphonefacade/SoftphoneFacade.xcframework-1807312.zip",
            checksum: "4a6b56ef4121db7da17c167115ce07dfde51464ff50623ce4b9a0b4a5f048cb3"),
        .target(name: "SoftphoneFacadeTargets",
               dependencies: [
                              .target(name: "SoftphoneFacade"),
                              .product(name: "SoftphoneSwiftPackage-saas-local", package: "saas")
                              ])
    ]
)
