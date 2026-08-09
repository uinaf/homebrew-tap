cask "endelito" do
  version "1.2.8"
  sha256 "0adf40f98acf745f653ef9728ba44ff9f59673e294d7d2317257dce01941de4e"

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
