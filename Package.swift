// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "deliveryhero-softphonefacade",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SdkFacade",
            targets: ["SoftphoneFacade","Softphone","Softphone_Swift"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
//        .package(url: "https://github.com/acrobits/SoftphoneSwiftPackage-saas-local", .exact("1.0.180710"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "SoftphoneFacade",
            url: "https://dist.acrobits.cz/deliveryhero-softphonefacade/SoftphoneFacade.xcframework-1807301.zip",
            checksum: "364c5bfedf42a03043cbaf2a4d96b97af96040edf2d5fd97e109d715a85ac7e2"),
        .binaryTarget(
            name: "Softphone",
            url: "https://dist.acrobits.net/saas-swift-package-local/debug/Softphone.xcframework-180710.zip",
            checksum: "a14e4e5e4bec6427cf8ca99ace05fdd5e024f53eadbc43e2fdad9c51f9970842"),
        .binaryTarget(
            name: "Softphone_Swift",
            url: "https://dist.acrobits.net/saas-swift-package-local/debug/Softphone_Swift.xcframework-180710.zip",
            checksum: "9d96f04cd12e6e9ec496c2e649608976476260ab8e03926642a15e69a979fc59")

    ]
)
