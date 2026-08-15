cask "slopwake" do
  version "1.3.3"
  sha256 "aaea9b177fc9d1ec15a3597561ee121c85f55f0d3b1843918050e8ecb7d88b00"

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
