class Ikscc < Formula
  desc     "This tools helps you to clean the IBM IKS/OpenShift cluster context names"
  homepage "https://github.com/jjuarez/iks-ctx-cleaner"
  version  "0.3.0"
  url      "https://github.com/jjuarez/iks-ctx-cleaner/releases/download/v#{version}/iks-ctx-cleaner_#{version}_Darwin_x86_64.tar.gz"
  sha256   "7e0b4aae4fbf6a16a34ee54a348e560fdf5c284244982e911e1dca726dbac49b"

  def install
    system "install iks-ctx-cleaner /usr/local/bin/ikscc"
  end

  test do
    system "true"
  end
end
