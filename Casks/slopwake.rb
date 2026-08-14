cask "slopwake" do
  version "1.3.1"
  sha256 "5b0c28c7a3a2f20eeed7f2212be4c5dff49731d8d1edda015f3c90c796ec19cd"

  url "https://github.com/uinaf/slopwake/releases/download/v#{version}/slopwake-#{version}-macos-universal.zip"
  name "slopwake"
  desc "Keep your Mac awake while supported coding agents work"
  homepage "https://github.com/uinaf/slopwake"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "slopwake.app"

  uninstall quit: "dev.uinaf.slopwake"

  zap trash: "~/Library/Preferences/dev.uinaf.slopwake.plist"
end
