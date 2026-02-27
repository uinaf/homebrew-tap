class Healthd < Formula
  desc "Pluggable local host health-check daemon"
  homepage "https://github.com/uinaf/healthd"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uinaf/healthd/releases/download/v0.4.0/healthd_v0.4.0_darwin_arm64.tar.gz"
      sha256 "06509906bea37659f2565050b1f948dae46bbaa2fc324971987652b83525546d"
    else
      url "https://github.com/uinaf/healthd/releases/download/v0.4.0/healthd_v0.4.0_darwin_amd64.tar.gz"
      sha256 "ba0f0c3a8eb72f1de53a55d6bbe509ac1efb0beb9d3d31e0f9dc7b7a8e9a1d95"
    end
  end

  def install
    bin.install "healthd"
  end

  test do
    assert_match "healthd", shell_output("#{bin}/healthd --help")
  end
end
