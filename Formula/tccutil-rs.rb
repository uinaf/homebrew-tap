class TccutilRs < Formula
  desc "Manage macOS TCC permissions"
  homepage "https://github.com/uinaf/tccutil"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uinaf/tccutil/releases/download/v0.1.1/tccutil-rs_v0.1.1_darwin-arm64.tar.gz"
      sha256 "3a5290cd1694a36c27d8799df328522f6b98d4af6281da8927d6b5d1e578cac7"
    else
      url "https://github.com/uinaf/tccutil/releases/download/v0.1.1/tccutil-rs_v0.1.1_darwin-amd64.tar.gz"
      sha256 "d1e59d4243be3fc8573262c5c3b8e87ff221e2b5a606b47a66f0eee08ed5c202"
    end
  end

  def install
    bin.install "tccutil-rs"
  end

  test do
    assert_match "Manage macOS TCC permissions", shell_output("#{bin}/tccutil-rs --help")
  end
end
