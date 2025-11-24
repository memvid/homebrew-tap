class Memorycli < Formula
  desc "A simple CLI for testing deployment pipelines"
  homepage "https://github.com/memvid/memory-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.1/memorycli-x86_64-apple-darwin.tar.gz"
      sha256 "958a97e33d8d9276c3b992bcfe093690c81d2115be4e36a0ae06d1262b87131d"
    else
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.0/memorycli-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.0/memorycli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    else
      url "https://github.com/memvid/memory-cli/releases/download/v0.1.0/memorycli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    end
  end

  def install
    bin.install "memorycli"
  end

  test do
    assert_match "Hello, World!", shell_output("#{bin}/memorycli")
  end
end