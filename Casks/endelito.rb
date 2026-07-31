cask "endelito" do
  version "1.2.3"
  sha256 "a9e2337a34d6d7a0d1e6485e0831dc6b09848c9703b3bd038bc9aef05f667cb5"

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
