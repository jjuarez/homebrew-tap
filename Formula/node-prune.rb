class NodePrune < Formula
  desc     "This tools helps you to cleanup your node_modules directory"
  homepage "https://github.com/tj/node-prune"
  version  "1.0.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tj/node-prune/releases/download/v#{version}/node-prune_#{version}_darwin_amd64.tar.gz"
    sha256 "beb0b8c319790bbec69084e27a0e36002ab32bef51596186c66c02dd0f4abfa6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tj/node-prune/releases/download/v#{version}/node-prune_#{version}_linux_amd64.tar.gz"
    sha256 "6e22e88dff46b909491cfaa1d0dbb61cc98817a257a3d75e9212f56b7f5bdbb1"
  end

  def install
    bin.install "node-prune" => "node-prune"
  end

  test do
    assert_match(/^node-prune 1.0.1/, shell_output("#{bin}/node-prune 2>&1", 0)) 
  end
end
