class TccutilRs < Formula
  desc "Manage macOS TCC permissions"
  homepage "https://github.com/uinaf/tccutil"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uinaf/tccutil/releases/download/v0.2.0/tccutil-rs_v0.2.0_darwin-arm64.tar.gz"
      sha256 "a5fc28f5b32303e52e3508e00c8707cabef29b2eeb5b2c7fd2225c7b63840353"
    else
      url "https://github.com/uinaf/tccutil/releases/download/v0.2.0/tccutil-rs_v0.2.0_darwin-amd64.tar.gz"
      sha256 "bc0a21ef6d394f548a405b1a67432e6ca09d8e1efae52513518199dc67fc7280"
    end
  end

  def install
    bin.install "tccutil-rs"
  end

  test do
    assert_match "Manage macOS TCC permissions", shell_output("#{bin}/tccutil-rs --help")
  end
end
