class Rtkx < Formula
  desc "Context compression CLI for the AXON stack (fork of rtk)"
  homepage "https://github.com/sammyjdev/rtkx"
  version "0.43.1"
  license "Apache 2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sammyjdev/rtkx/releases/download/v0.43.1/rtkx-aarch64-apple-darwin.tar.gz"
    sha256 "cb9209c80a9b48a349f75f6c6f46f1ad7012ee2bccf6ffa049ead4542c323d17"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sammyjdev/rtkx/releases/download/v0.43.1/rtkx-x86_64-apple-darwin.tar.gz"
    sha256 "0b11b25d249c87e0167060f9e843d87a227b51f5f2ac9fef2b2da4d1ba5b42ba"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/sammyjdev/rtkx/releases/download/v0.43.1/rtkx-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "c27ce5ead099fe2e3c6745c815e4b09a1f3de162934e82432ad44d2a70a943a8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sammyjdev/rtkx/releases/download/v0.43.1/rtkx-x86_64-unknown-linux-musl.tar.gz"
    sha256 "602344c213c9eecdde5e74102155530433e9621583d99a24b09c617e5f1eea69"
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
