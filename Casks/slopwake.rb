cask "slopwake" do
  version "1.3.4"
  sha256 "f279ea354b3718809632d8c061bb04cc81bb6e7ef566e7da91bcaf0fc06a2c49"

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
