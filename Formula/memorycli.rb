class Memorycli < Formula
  desc "A simple CLI for testing deployment pipelines"
  homepage "https://github.com/memvid/memory-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      # ARM macOS (Apple Silicon)
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.2/memorycli-aarch64-apple-darwin.tar.gz"
      sha256 "c3ebeee917028d60b5260551e48fdd425710b4c9b0b7f1246fda26ec76a0cf7b"
    else
      # Intel macOS
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.2/memorycli-x86_64-apple-darwin.tar.gz"
      sha256 "e59e11b06d7b7e4759028f8b6f6d174a62a611e3f358af2a809406c3260a597e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      # ARM Linux
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.2/memorycli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4cc5bfe27dfdffa2c94ec5b7174f4ad0586ea85a63604653f3931b8ca299d1c4"
    else
      # Intel Linux
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.2/memorycli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe68d0fd78ef8f37f376c42c917cb0b791fc20878ab8dc9ea441718e88fbe441"
    end
  end

  def install
    bin.install "memorycli"
  end

  test do
    assert_match "Hello", shell_output("#{bin}/memorycli")
  end
end
