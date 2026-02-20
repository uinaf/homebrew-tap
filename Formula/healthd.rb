class Healthd < Formula
  desc "Pluggable local host health-check daemon"
  homepage "https://github.com/uinaf/healthd"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uinaf/healthd/releases/download/v0.2.0/healthd_v0.2.0_darwin_arm64.tar.gz"
      sha256 "cb8b0ccedb5a780b720f3798dd74b028aa9e47664773b70b7a783cc9759d0389"
    else
      url "https://github.com/uinaf/healthd/releases/download/v0.2.0/healthd_v0.2.0_darwin_amd64.tar.gz"
      sha256 "8f46f7327c5f99087b91b1642824bfdfc18dbf3c30b7f592674640e9345df1bd"
    end
  end

  def install
    bin.install "healthd"
  end

  test do
    assert_match "healthd", shell_output("#{bin}/healthd --help")
  end
end
