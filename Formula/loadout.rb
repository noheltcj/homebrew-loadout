class Loadout < Formula
  desc "CLI tool for managing and composing configuration fragments across projects"
  homepage "https://github.com/noheltcj/loadout"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.5.0/loadout-macos-arm64.tar.gz"
      sha256 "44f52d1d871676caf1ab28853aa5c01e53b27da5c6d9406d1f721cff93d48fcd"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.5.0/loadout-macos-x64.tar.gz"
      sha256 "475a5e1c06336c4f876beabacc8220e0be8382e64ebda82613aa6ea5018ec230"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.5.0/loadout-linux-arm64.tar.gz"
      sha256 "e07460d6286c2ca8121ac6a4a7709c46e58287f21032e70f4a3e8aa92fc25f1a"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.5.0/loadout-linux-x64.tar.gz"
      sha256 "25ea08d316455c695541fc826a695f5f7b2a7961c616a9fc50fb1aca8dc5a513"
    end
  end

  def install
    bin.install "loadout"
  end

  test do
    assert_match "Usage: loadout", shell_output("#{bin}/loadout --help")
  end
end
