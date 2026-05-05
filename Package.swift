// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "helix-store-wal-trail",
    products: [.executable(name: "helix-store-wal-trail", targets: ["App"])],
    targets: [.executableTarget(name: "App", path: "src")]
)
