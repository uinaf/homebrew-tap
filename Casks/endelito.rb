cask "endelito" do
  version "1.2.11"
  sha256 "45e0ba54e5de55ef52d3d47ffef1111a41ae33d50aba2c8e0f749f3396602f1d"

  url "https://github.com/uinaf/endelito/releases/download/v#{version}/endelito-#{version}-macos-arm64.zip"
  name "Endelito"
  desc "Menu bar WebKit player and CLI control for Endel"
  homepage "https://github.com/uinaf/endelito"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Endelito/Endelito.app"
  binary "Endelito/endelito"
end
