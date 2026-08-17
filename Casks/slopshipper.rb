cask "slopshipper" do
  version "6.0.0"
  sha256 :no_check

  url "https://github.com/uinaf/ffsstack"
  name "slopshipper"
  desc "Retired; replaced by slopmachine in uinaf/ffsstack"
  homepage "https://github.com/uinaf/ffsstack"

  binary "slopshipper"

  disable! date: "2026-08-16", because: "slopshipper was renamed slopmachine and lives in uinaf/ffsstack; install with: brew install --cask uinaf/tap/slopmachine"
end
