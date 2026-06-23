class Capy < Formula
  desc "End-to-end encrypted environment variables for your team"
  homepage "https://docs.capy.sc"
  url "https://registry.npmjs.org/@capysc/cli/-/cli-0.8.0.tgz"
  sha256 "c7c44507f55e2c7227ed23e958a321eb1e26ab4f65fe4e9d439998c591a9d5ac"
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
