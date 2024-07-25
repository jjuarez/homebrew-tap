class Ikscc < Formula
  desc     "This tools helps you to clean the IBM Kubernetes Service/OpenShift cluster context names"
  homepage "https://github.com/jjuarez/iks-ctx-cleaner"
  version  "0.4.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jjuarez/iks-ctx-cleaner/releases/download/#{version}/iks-ctx-cleaner_Darwin_x86_64.tar.gz"
    sha256 "15170e928c651ccd92ff2c8dd6d6c2dd45723f1cf58ffad37ab272a50280e1f5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jjuarez/iks-ctx-cleaner/releases/download/#{version}/iks-ctx-cleaner_Darwin_arm64.tar.gz"
    sha256 "d832443c3b806c32e9782686420be92692890fa2e3caa0214992da5e853f3b0f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jjuarez/iks-ctx-cleaner/releases/download/#{version}/iks-ctx-cleaner_Linux_x86_64.tar.gz"
    sha256 "6d432681e2f1aca3aa28bad494c94eef9c2c4b19d09370d332ba0fcf00fe5d0f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/jjuarez/iks-ctx-cleaner/releases/download/#{version}/iks-ctx-cleaner_Linux_arm64.tar.gz"
    sha256 "b15e75228adc77c9ef209e02b33922d1d3cc7123dc99e66126a7a556bf619949"
  end

  def install
    bin.install "iks-ctx-cleaner" => "ikscc"
  end

  test do
    assert_match(/^ikscc 0.4.0/, shell_output("#{bin}/ikscc 2>&1", 0)) 
  end
end
