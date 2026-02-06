class Loadout < Formula
  desc "CLI tool for managing and composing configuration fragments across projects"
  homepage "https://github.com/noheltcj/loadout"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.4.0/loadout-macos-arm64.tar.gz"
      sha256 "49d17ec616988f2913e60de6b699bc16105172573c22e642562d217ae4c7af87"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.4.0/loadout-macos-x64.tar.gz"
      sha256 "49cb69143a9a82478d0b7f3b7bdec19fd0a642a05f382043a768f7f319211d28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.4.0/loadout-linux-arm64.tar.gz"
      sha256 "aaee4ab63be9fc64320796f663222376098d90b434f38d9b116208d62dd2a3f4"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.4.0/loadout-linux-x64.tar.gz"
      sha256 "f06928ff80205dd82ef950f79e003ba4698a5bb048c2390a06c494e8a30c75d2"
    end
  end

  def install
    bin.install "loadout"
  end

  test do
    assert_match "Usage: loadout", shell_output("#{bin}/loadout --help")
  end
end
