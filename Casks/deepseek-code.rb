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

  zap trash: [
    "~/Library/Application Support/DeepSeekCode",
    "~/Library/Application Support/deepseek-code-desktop",
  ]
end
