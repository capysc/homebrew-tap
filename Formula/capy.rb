class Capy < Formula
  desc "End-to-end encrypted environment variables for your team"
  homepage "https://docs.capy.sc"
  url "https://registry.npmjs.org/@capysc/cli/-/cli-0.9.16.tgz"
  sha256 "cd78f0a7ddab9556dc908736beca86835d0f9cff369463d6194abd94b0cbe003"
  license "AGPL-3.0-only"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/capy --version")
  end
end
