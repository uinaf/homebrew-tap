class Healthd < Formula
  desc "Pluggable local host health-check daemon"
  homepage "https://github.com/uinaf/healthd"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uinaf/healthd/releases/download/v0.5.0/healthd_v0.5.0_darwin_arm64.tar.gz"
      sha256 "6ef77c6da1c73102d35611d3a5894a406cd304e3e68fa2da5a89b6c4402377fe"
    else
      url "https://github.com/uinaf/healthd/releases/download/v0.5.0/healthd_v0.5.0_darwin_amd64.tar.gz"
      sha256 "f82856202b6e78abc306302e8b9477946f6f6c80ba4b194c0b9afc3a0b10d6b0"
    end
  end

  def install
    bin.install "healthd"
  end

  test do
    assert_match "healthd", shell_output("#{bin}/healthd --help")
  end
end
