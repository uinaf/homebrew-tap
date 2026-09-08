cask "slopshipper" do
  version "6.0.0"
  sha256 :no_check

  url "https://github.com/uinaf/ffss"
  name "slopshipper"
  desc "Autonomous coding CLI"
  homepage "https://github.com/uinaf/ffss"

  binary "slopshipper"

  disable! date: "2026-08-16", because: "the CLI is retired; use the slopmachine execution skill at https://github.com/uinaf/ffss"
end
