class Loadout < Formula
  desc "CLI tool for managing and composing configuration fragments across projects"
  homepage "https://github.com/noheltcj/loadout"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.7.1/loadout-macos-arm64.tar.gz"
      sha256 "39faa2131eb6dd63588289593680d7b3c7fdf1341c2f819fdb2eabd574b3f4e1"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.7.1/loadout-macos-x64.tar.gz"
      sha256 "31a8d172f10a3a228feb8ff560e19a1d18f069d8e6fb3f6a79fb9b770fde01de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.7.1/loadout-linux-arm64.tar.gz"
      sha256 "4aadae1a741128e5689691c56e263788dc805cfa931a7681ca802aa31ed27e18"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.7.1/loadout-linux-x64.tar.gz"
      sha256 "6e394472e63fc44004ea8ac93dfc77c0d2816de63349e6cf2ead2a7e8dd229ea"
    end
  end

  def install
    bin.install "loadout"
  end

  test do
    assert_match "Usage: loadout", shell_output("#{bin}/loadout --help")
  end
end
