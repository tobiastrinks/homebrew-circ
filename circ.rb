require "language/node"

class Circ < Formula
  desc "CLI for interacting with CircleCI during tests, builds and deployments without leaving your terminal"
  homepage "https://github.com/tobiastrinks/circ#readme"
  url "https://registry.npmjs.org/@ttrinks/circ/-/circ-1.0.1.tgz"
  version "1.0.1"
  sha256 "4e5ab502742ac2dafa47ab04f8c2ad30158f7f5e88e909369dd7a5c4f8539586"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
