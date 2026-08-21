class Attach < Formula
  desc "Upload PR and validation media to an attach Worker"
  homepage "https://github.com/uinaf/attach"
  url "https://registry.npmjs.org/@uinaf/attach-cli/-/attach-cli-0.6.1.tgz"
  sha256 "13330c0cf5f7f7ccd56dec4bcec558aec71299be9452184727f0c6d672b5f646"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "attach put", shell_output("#{bin}/attach --help")
    assert_match "attach put", shell_output("#{bin}/gh-attach --help")
  end
end
