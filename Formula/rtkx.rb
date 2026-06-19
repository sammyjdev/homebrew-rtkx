class Rtkx < Formula
  desc "Context compression CLI for the AXON stack (fork of rtk)"
  homepage "https://github.com/sammyjdev/rtkx"
  version "0.43.0"
  license "Apache 2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sammyjdev/rtkx/releases/download/v0.43.0/rtkx-aarch64-apple-darwin.tar.gz"
    sha256 "06f4c100fe98cadec0c63b1afbfb1c182c620051c14daab82f6e84205035335c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sammyjdev/rtkx/releases/download/v0.43.0/rtkx-x86_64-apple-darwin.tar.gz"
    sha256 "92be4ac8923c20917add4ee404e1df7d1206e678ef9f6b1728c339044f9b7c0c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/sammyjdev/rtkx/releases/download/v0.43.0/rtkx-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "8a99d213135930c6d56ce61a8756c496a276da7ecc3d3cec3c24f47bcf0f792e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sammyjdev/rtkx/releases/download/v0.43.0/rtkx-x86_64-unknown-linux-musl.tar.gz"
    sha256 "204eab1ca15d148c36bc9d7ef0844bdf9e65810bdc3d886fa151ce51461fc9cc"
  end

  def install
    bin.install "rtkx"
  end

  def caveats
    <<~EOS
      rtkx is installed! It powers the AXON stack's context compression.

        # See all commands
        rtkx --help

        # Measure your token savings
        rtkx gain

      Front-end product: https://github.com/sammyjdev/axon
    EOS
  end

  test do
    system "#{bin}/rtkx", "--version"
  end
end
