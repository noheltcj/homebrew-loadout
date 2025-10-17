class Loadout < Formula
  desc "CLI tool for managing and composing configuration fragments across projects"
  homepage "https://github.com/noheltcj/loadout"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.1.0/loadout-macos-arm64.tar.gz"
      sha256 "fd97675f6c047f700fa4046e981a77ef961438b8ab96da69baea5723b8e0fc75"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.1.0/loadout-macos-x64.tar.gz"
      sha256 "2039957c417311407dc2b10a9af8009f6301282cd2a7d927231b2fdb5663b39e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.1.0/loadout-linux-arm64.tar.gz"
      sha256 "2b4b6462995d1f4a8a2fc96c12639f2f1faad03439ba26bc5d217d7e4019f8eb"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.1.0/loadout-linux-x64.tar.gz"
      sha256 "b912864049dfb8cb9963e3367fc817caceb0dca7df3efef959e5a98c320cea8a"
    end
  end

  def install
    bin.install "loadout"
  end

  test do
    assert_match "Usage: loadout", shell_output("#{bin}/loadout --help")
  end
end
