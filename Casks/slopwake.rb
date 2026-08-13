cask "slopwake" do
  version "1.2.3"
  sha256 "395c7aa63dcf0e4ad0579a771f34321be664a8fa7aaf3bb55572ef1835f13d70"

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
