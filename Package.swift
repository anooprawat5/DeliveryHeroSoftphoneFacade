// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "deliveryhero-softphonefacade",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SoftphoneFacade",
            targets: ["SoftphoneFacadeTargets"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "SoftphoneSdk", url: "https://github.com/acrobits/SoftphoneSwiftPackage-saas-local", .exact("1.0.181495"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "SoftphoneFacadeTargets",
               dependencies: [
                              .target(name: "SoftphoneFacadeLib"),
                              .product(name: "SoftphoneSwiftPackage-saas-local", package: "SoftphoneSdk")
                              ],
                linkerSettings: [
                    .linkedFramework("SoftphoneFacadeLib")
                ]),
        
        .binaryTarget(
            name: "SoftphoneFacadeLib",
            url: "https://dist.acrobits.cz/deliveryhero-softphonefacade/SoftphoneFacadeLib.xcframework-1815006.zip",
            checksum: "32b05b7829ac19092e25adf536d6fea83332799b1098bcb2f940c8e908e11369"
        )
    ]
)
