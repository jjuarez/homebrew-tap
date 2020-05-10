class Kubie < Formula
  desc     "Much more powerful alternative to kubectx and kubens"
  homepage "https://github.com/sbstp/kubie"
  url      "https://github.com/sbstp/kubie/archive/v0.9.1.tar.gz"
  version  "0.9.1"
  sha256   "8f7926b1bcd0421247231353b6969c36498add3b88b55103349df3da763a5f42"

  depends_on "rust" =>:build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match(/^kubie 0.9.1/, shell_ouput("#{bin}/kubie 2>&1", 0))
  end
end
