class Healthd < Formula
  desc "Pluggable local host health-check daemon"
  homepage "https://github.com/uinaf/healthd"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uinaf/healthd/releases/download/v0.1.0/healthd_v0.1.0_darwin_arm64.tar.gz"
      sha256 "fcbd61e607a280fc2ca8823f6f7d2f177a4ff1a737afc257700ea9231b9f151a"
    else
      url "https://github.com/uinaf/healthd/releases/download/v0.1.0/healthd_v0.1.0_darwin_amd64.tar.gz"
      sha256 "e47a45603cb09c204b76bd8387d24c573d24a14757da00edc835ad6eb3394f16"
    end
  end

  def install
    bin.install "healthd"
  end

  test do
    assert_match "healthd", shell_output("#{bin}/healthd --help")
  end
end
