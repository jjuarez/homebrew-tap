class NatsTop < Formula
  desc "nats-top is a top-like tool for monitoring NATS servers"
  homepage "https://nats.io"
  url "https://github.com/nats-io/nats-top"
  version "0.5.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nats-io/nats-top/releases/download/v#{version}/nats-top_#{version}_darwin_amd64.tar.gz"
    sha256 "d4df1733ea89a935557ccc0c624714722ecd896a084ea3927948bbcb32bbd495"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nats-io/nats-top/releases/download/v#{version}/nats-top_#{version}_darwin_arm64.tar.gz"
    sha256 "e05f4b950a68153ac5b2f8ffcd58fb7418cf4b3ff1b8d83f421f2115f22088e0"
  end

  def install
    bin.install "nats-top" => "nats-top"
  end

  test do
    assert_match(/^nats-top 0.5.0/, shell_output("#{bin}/nats-top 2>&1", 0)) 
  end
end
