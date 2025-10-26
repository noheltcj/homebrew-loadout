class Loadout < Formula
  desc "CLI tool for managing and composing configuration fragments across projects"
  homepage "https://github.com/noheltcj/loadout"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.2.0/loadout-macos-arm64.tar.gz"
      sha256 "1342101a69c9d08e50ee10107470bf9fd78134e80a07d3bd6d0af2d046fe9dd5"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.2.0/loadout-macos-x64.tar.gz"
      sha256 "2b15b887c5759d735f7b9fda7be4a1af34934364e95790e1945bd8cc657b21b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.2.0/loadout-linux-arm64.tar.gz"
      sha256 "9b26ae58f17809470b7f79034f44fe014e08009c9a009e24b8d233160b12f6b5"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.2.0/loadout-linux-x64.tar.gz"
      sha256 "c6b802edbe3f96f66af4524e51d43d10bc893191f8031e8138eb60726f945e6b"
    end
  end

  def install
    bin.install "loadout"
  end

  test do
    assert_match "Usage: loadout", shell_output("#{bin}/loadout --help")
  end
end
