class Kubei < Formula
  desc     "Much more powerful alternative to kubectx and kubens"
  homepage "https://github.com/sbstp/kubie"
  url      "https://github.com/sbstp/kubie/releases/download/v0.9.1/kubie-darwin-amd64"
  version  "0.9.1"
  sha256   "c789bcc4ecd02e1abd4e82d2df5f6529815cfeea84ee90b66437c8671a015d5f"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end
end
