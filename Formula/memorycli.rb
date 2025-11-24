class Memorycli < Formula
  desc "A simple CLI for testing deployment pipelines"
  homepage "https://github.com/memvid/memory-cli"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      # ARM macOS (Apple Silicon)
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.6/memorycli-aarch64-apple-darwin.tar.gz"
      sha256 "58845bf57f3f278b5bf94abe09ac36b81614dbaa9a37a5be7f463c567506b4f5"
    else
      # Intel macOS
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.6/memorycli-x86_64-apple-darwin.tar.gz"
      sha256 "127f1bdc6a1bff113b63471f15acf1acf1300cd02d86d2324964810b822263ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      # ARM Linux
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.6/memorycli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a8216da8ea58111f4394bebd7121a44a6c466bcb75496ff69a1bd381a6c4e435"
    else
      # Intel Linux
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.6/memorycli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7294af9debd82ec08881bbd0ca29c75a8d7be3a605959e3162a7af40d4c1adc1"
    end
  end

  def install
    bin.install "memorycli"
  end

  test do
    assert_match "Hello", shell_output("#{bin}/memorycli")
  end
end
