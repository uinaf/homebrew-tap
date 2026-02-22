class Healthd < Formula
  desc "Pluggable local host health-check daemon"
  homepage "https://github.com/uinaf/healthd"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uinaf/healthd/releases/download/v0.3.0/healthd_v0.3.0_darwin_arm64.tar.gz"
      sha256 "4028d277963d2b2899cfabae9eee93a262fdf2fad2a76dd0c662d8a432aa61d8"
    else
      url "https://github.com/uinaf/healthd/releases/download/v0.3.0/healthd_v0.3.0_darwin_amd64.tar.gz"
      sha256 "8cc0072b6ca35340e522141e6783eb452ec8955aa1dd8c161fbe66ad37877182"
    end
  end

  def install
    bin.install "healthd"
  end

  test do
    assert_match "healthd", shell_output("#{bin}/healthd --help")
  end
end
