class Ikscc < Formula
  desc     "This tools helps you to clean the IBM IKS/OpenShift cluster context names"
  homepage "https://github.com/jjuarez/iks-ctx-cleaner"
  version  "0.3.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jjuarez/iks-ctx-cleaner/releases/download/v#{version}/iks-ctx-cleaner_#{version}_Darwin_x86_64.tar.gz"
    sha256 "7e0b4aae4fbf6a16a34ee54a348e560fdf5c284244982e911e1dca726dbac49b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jjuarez/iks-ctx-cleaner/releases/download/v#{version}/iks-ctx-cleaner_#{version}_Linux_x86_64.tar.gz"
    sha256 "6df5b60e46d812872c3823f40667c5df5ad11f22332d6cc1a0f7bdfe7a248322"
  end

  def install
    bin.install "iks-ctx-cleaner" => "ikscc"
  end
end
