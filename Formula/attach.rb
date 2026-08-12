class Attach < Formula
  desc "Upload PR and validation media to an attach Worker"
  homepage "https://github.com/uinaf/attach"
  url "https://registry.npmjs.org/@uinaf/attach-cli/-/attach-cli-0.6.0.tgz"
  sha256 "1e91a1c8fa22f40f193124de48044ba14ac66efeb1f3f0cb736d633fbdc43da4"
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
