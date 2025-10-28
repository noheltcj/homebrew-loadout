class Loadout < Formula
  desc "CLI tool for managing and composing configuration fragments across projects"
  homepage "https://github.com/noheltcj/loadout"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.3.0/loadout-macos-arm64.tar.gz"
      sha256 "672057ba37be576b209ffedfbc9bcf5ab7584584fc2008045c4921c81ae390af"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.3.0/loadout-macos-x64.tar.gz"
      sha256 "0eff058845ab5ed884c8fd548f0665ca81bc0a52dece39d628a123facaebe1ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.3.0/loadout-linux-arm64.tar.gz"
      sha256 "c24ec85f752e0cf91636bc48557181ed9a2713c838f5abbdfda8b0e2fcd21d58"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.3.0/loadout-linux-x64.tar.gz"
      sha256 "b1400c0223f4bd42e81674a2664ebc3db7cba2e5494860f890786e58fcb813b6"
    end
  end

  def install
    bin.install "loadout"
  end

  test do
    assert_match "Usage: loadout", shell_output("#{bin}/loadout --help")
  end
end
