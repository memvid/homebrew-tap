class Memorycli < Formula
  desc "A simple CLI for testing deployment pipelines"
  homepage "https://github.com/memvid/memory-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      # memorycli-aarch64-apple-darwin.tar.gz
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.1/memorycli-aarch64-apple-darwin.tar.gz"
      sha256 "PASTE_FULL_SHA256_FOR_aarch64_apple_darwin_HERE"
    else
      # memorycli-x86_64-apple-darwin.tar.gz
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.1/memorycli-x86_64-apple-darwin.tar.gz"
      sha256 "PASTE_FULL_SHA256_FOR_x86_64_apple_darwin_HERE"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      # memorycli-aarch64-unknown-linux-gnu.tar.gz
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.1/memorycli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PASTE_FULL_SHA256_FOR_aarch64_unknown_linux_gnu_HERE"
    else
      # memorycli-x86_64-unknown-linux-gnu.tar.gz
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.1/memorycli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PASTE_FULL_SHA256_FOR_x86_64_unknown_linux_gnu_HERE"
    end
  end

  def install
    bin.install "memorycli"
  end

  test do
    output = shell_output("#{bin}/memorycli")
    assert_match "Hello", output
  end
end
