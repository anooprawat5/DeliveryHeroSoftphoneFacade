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
        .package(url: "https://github.com/acrobits/SoftphoneSwiftPackage-saas-local", .exact("1.0.180710"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "SoftphoneFacade",
                      url: "https://dist.acrobits.cz/deliveryhero-softphonefacade/SoftphoneFacade.xcframework-1807298.zip",
                      checksum: "41e6c32f63c08f3b8b68b7e691d039602c68574cc32307e7d2e734aecb5ae9d3"
                     ),
        .target(name: "SoftphoneFacadeTargets",
               dependencies: ["SoftphoneFacade","Softphone","SoftphoneSwift"],
                path: ""
               )

    ]
)
