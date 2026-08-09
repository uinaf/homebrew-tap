class Attach < Formula
  desc "Upload PR and validation media to an attach Worker"
  homepage "https://github.com/uinaf/attach"
  url "https://registry.npmjs.org/@uinaf/attach-cli/-/attach-cli-0.5.1.tgz"
  sha256 "123c34263c0db97ba49824db541f9945dc331edb0afecf1a84ed9f9b1f7404d0"
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
