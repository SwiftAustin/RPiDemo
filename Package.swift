import PackageDescription

let package = Package(
    name: "RPiDemo",
    targets: [
        Target(
            name: "RPiDemo",
            dependencies: []
        )
    ],
    dependencies: [
	.Package(url: "https://github.com/uraimo/SwiftyGPIO.git", versions: Version(0, 8, 5)..<Version(0,8,6)),
    ]
)
