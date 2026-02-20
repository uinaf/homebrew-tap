class TccutilRs < Formula
  desc "Manage macOS TCC permissions"
  homepage "https://github.com/uinaf/tccutil"
  url "https://github.com/uinaf/tccutil/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a9e16a838646effab982fabfb443162e167ec76f17356136430a4e2fab3ab302"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Manage macOS TCC permissions", shell_output("#{bin}/tccutil-rs --help")
  end
end
