class NATSTop < Formula
  desc     "nats-top is a top-like tool for monitoring NATS servers"
  homepage "https://github.com/nats-io/nats-top"
  version  "0.5.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nats-io/nats-top/releases/download/v#{version}/nats-top_#{version}_Darwin_x86_64.tar.gz"
    sha256 "d4df1733ea89a935557ccc0c624714722ecd896a084ea3927948bbcb32bbd495"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nats-io/nats-top/releases/download/v#{version}/nats-top_#{version}_Darwin_arm64.tar.gz"
    sha256 "e05f4b950a68153ac5b2f8ffcd58fb7418cf4b3ff1b8d83f421f2115f22088e0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nats-io/nats-top/releases/download/v#{version}/nats-top_#{version}_Linux_x86_64.tar.gz"
    sha256 "bcdcd043fa5d134d7461822daebafd1c34da02af1386977f0a4828ad752f795a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/nats-io/nats-top/releases/download/v#{version}/nats-top_#{version}_Linux_arm64.tar.gz"
    sha256 "75db0ee632c7ebf61b3a415e73361f6f5cad0a1a7af05a23e4b55118eb5f5171"
  end

  def install
    bin.install "nats-top" => "nats-top"
  end

  test do
    assert_match(/^nats-top 0.5.0/, shell_output("#{bin}/nats-top 2>&1", 0)) 
  end
end
