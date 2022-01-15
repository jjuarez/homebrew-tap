class Kubie < Formula
  desc     "Much more powerful alternative to kubectx and kubens"
  homepage "https://github.com/sbstp/kubie"
  version  "0.16.0"
  url      "https://github.com/sbstp/kubie/archive/refs/tags/#{version}.tar.gz"
  sha256   "0c43848d201ee36c11ddb082a9d16604435c6190ac72f293e9f8f1ce62d20fa6"

  depends_on "rust" =>:build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match(/^kubie 0.16.0/, shell_ouput("#{bin}/kubie 2>&1", 0))
  end
end
