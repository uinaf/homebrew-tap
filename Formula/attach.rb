class Attach < Formula
  desc "Upload PR and validation media to an attach Worker"
  homepage "https://github.com/uinaf/attach"
  url "https://registry.npmjs.org/@uinaf/attach-cli/-/attach-cli-0.3.2.tgz"
  sha256 "379a9924efd5d394c8915ef567e4eedd67e55b861beddfbdce97c69b45d75f26"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "attach put", shell_output("#{bin}/attach --help 2>&1", 2)
    assert_match "attach put", shell_output("#{bin}/gh-attach --help 2>&1", 2)
  end
end
