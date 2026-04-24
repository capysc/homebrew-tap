class Capy < Formula
  desc "End-to-end encrypted environment variables for your team"
  homepage "https://docs.capy.sc"
  url "https://registry.npmjs.org/@capysc/cli/-/cli-0.2.0.tgz"
  sha256 "REPLACE_WITH_NPM_TARBALL_SHA256"
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
