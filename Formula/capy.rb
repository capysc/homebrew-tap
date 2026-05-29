class Capy < Formula
  desc "End-to-end encrypted environment variables for your team"
  homepage "https://docs.capy.sc"
  url "https://registry.npmjs.org/@capysc/cli/-/cli-0.6.0.tgz"
  sha256 "de7f6b9ef82554fcf02a071aa6dd96bbdbc74f48b59db06522c8893b0bf3c056"
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
