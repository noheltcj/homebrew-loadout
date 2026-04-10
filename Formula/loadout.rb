class Loadout < Formula
  desc "CLI tool for managing and composing configuration fragments across projects"
  homepage "https://github.com/noheltcj/loadout"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.6.0/loadout-macos-arm64.tar.gz"
      sha256 "3782379eb237a909bc457fbf4028cd986d3d90b20b24e90a2c153ab6b729f5b4"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.6.0/loadout-macos-x64.tar.gz"
      sha256 "1c3174a4da4467c6515e12e4897dec57b39cc6583bdd584f2243f6454ea073dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.6.0/loadout-linux-arm64.tar.gz"
      sha256 "3e594a62925fab93e06c9180fbb9389f50a7cba6ddc42fb14425c6127268bacc"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.6.0/loadout-linux-x64.tar.gz"
      sha256 "2a9c5d53a7b62581b87bf82e0f8878f115621884253fe93b255bf4c20f0bc0d9"
    end
  end

  def install
    bin.install "loadout"
  end

  test do
    assert_match "Usage: loadout", shell_output("#{bin}/loadout --help")
  end
end
