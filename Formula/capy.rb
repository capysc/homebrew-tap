class Capy < Formula
  desc "End-to-end encrypted environment variables for your team"
  homepage "https://docs.capy.sc"
  url "https://registry.npmjs.org/@capysc/cli/-/cli-0.9.18.tgz"
  sha256 "6596b6f84cc621b2403123ffd996f54ba4322346ce9fb4d8bae5e7f02d1d73bf"
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
