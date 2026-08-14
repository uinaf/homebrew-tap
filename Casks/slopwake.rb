cask "slopwake" do
  version "1.3.0"
  sha256 "c32bf771e62ae4740a006b12ebd64078e38fd0d26e7479dcf065216e75757c29"

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
