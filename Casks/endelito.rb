cask "endelito" do
  version "1.2.4"
  sha256 "0fd1a1d4209d04197ce2f247328609a6d26e66dae4ad27928dd9301bfbd10e47"

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
