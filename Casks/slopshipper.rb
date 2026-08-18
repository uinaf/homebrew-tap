cask "slopshipper" do
  version "6.0.0"
  sha256 :no_check

  url "https://github.com/uinaf/ffss"
  name "slopshipper"
  desc "Retired; replaced by slopmachine in uinaf/ffss"
  homepage "https://github.com/uinaf/ffss"

  binary "slopshipper"

  disable! date: "2026-08-16", because: "slopshipper was renamed slopmachine and lives in uinaf/ffss; install with: brew install --cask uinaf/tap/slopmachine"
end
