cask "endelito" do
  version "1.2.9"
  sha256 "cacb0c12c59a44a8b268eb263cc807e36bbdb66e34087d8bbdc78f123af8528a"

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
