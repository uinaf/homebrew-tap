class Attach < Formula
  desc "Upload PR and validation media to an attach Worker"
  homepage "https://github.com/uinaf/attach"
  url "https://registry.npmjs.org/@uinaf/attach-cli/-/attach-cli-0.5.0.tgz"
  sha256 "d9f441673c4a9c540da4988a5f8c86ea15c3cc350601017f5272b2c29afca35a"
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
