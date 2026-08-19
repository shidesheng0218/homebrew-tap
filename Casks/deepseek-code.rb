cask "deepseek-code" do
  version "0.2.0"
  sha256 "bc492596d9e3cd613a0a4805c31ac387a01a50a5b2e5e57128e6356d29a85811"

  url "https://github.com/shidesheng0218/deepseek-code/releases/download/v#{version}/DeepSeek-Code-#{version}-arm64.dmg"
  name "DeepSeek Code"
  desc "Local-first macOS coding agent with BYOK providers, durable sessions and verifiable delivery"
  homepage "https://github.com/shidesheng0218/deepseek-code"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "DeepSeek Code.app"

  caveats <<~EOS
    DeepSeek Code 为 adhoc 签名的社区构建。通过 Homebrew 安装的应用不经过
    浏览器隔离，双击即可启动，无需任何额外操作；内置自动更新同样不受影响。
    仅当从浏览器直接下载 DMG 安装时，首次需在 Finder 右键 App 选择"打开"一次。
  EOS

  zap trash: [
    "~/Library/Application Support/DeepSeekCode",
    "~/Library/Application Support/deepseek-code-desktop",
  ]
end
