class Ikscc < Formula
  desc     "This tools helps you to clean the IBM IKS/OpenShift cluster context names"
  homepage "https://github.com/jjuarez/iks-ctx-cleaner"
  version  "0.3.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jjuarez/iks-ctx-cleaner/releases/download/v#{version}/iks-ctx-cleaner_#{version}_Darwin_x86_64.tar.gz"
    sha256 "7e0b4aae4fbf6a16a34ee54a348e560fdf5c284244982e911e1dca726dbac49b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jjuarez/iks-ctx-cleaner/releases/download/v#{version}/iks-ctx-cleaner_#{version}_Darwin_arm64.tar.gz"
    sha256 "e1a6b62804f2f11b1fb33b7af1add50491b21e13cc928496884983044d66b17d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jjuarez/iks-ctx-cleaner/releases/download/v#{version}/iks-ctx-cleaner_#{version}_Linux_x86_64.tar.gz"
    sha256 "6df5b60e46d812872c3823f40667c5df5ad11f22332d6cc1a0f7bdfe7a248322"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/jjuarez/iks-ctx-cleaner/releases/download/v#{version}/iks-ctx-cleaner_#{version}_Linux_arm64.tar.gz"
    sha256 "6df5b60e46d812872c3823f40667c5df5ad11f22332d6cc1a0f7bdfe7a248322"
  end

  def install
    bin.install "iks-ctx-cleaner" => "ikscc"
  end

  test do
    assert_match(/^ikscc 0.3.3/, shell_output("#{bin}/ikscc 2>&1", 0)) 
  end
end
