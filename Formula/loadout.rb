class Loadout < Formula
  desc "CLI tool for managing and composing configuration fragments across projects"
  homepage "https://github.com/noheltcj/loadout"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.1.0/loadout-macos-arm64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_FOR_MACOS_ARM64"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.1.0/loadout-macos-x64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_FOR_MACOS_X64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.1.0/loadout-linux-arm64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_FOR_LINUX_ARM64"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.1.0/loadout-linux-x64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_FOR_LINUX_X64"
    end
  end

  def install
    bin.install "loadout"
  end

  test do
    assert_match "Usage: loadout", shell_output("#{bin}/loadout --help")
  end
end
