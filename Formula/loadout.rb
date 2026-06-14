class Loadout < Formula
  desc "CLI tool for managing and composing configuration fragments across projects"
  homepage "https://github.com/noheltcj/loadout"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.7.2/loadout-macos-arm64.tar.gz"
      sha256 "cb161198e69fca4be42f97ea8f8b19e080e6d7c3edd6ea4c594ef3096bd43ffa"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.7.2/loadout-macos-x64.tar.gz"
      sha256 "51da46da0166cd45eca007282bc7524e4c71de7a0e25f012e7ab10003bce59e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.7.2/loadout-linux-arm64.tar.gz"
      sha256 "4dbc581b1ab9357e26a2b2c945d50ea3b40701677a5919bdd0d6d35f861d2543"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.7.2/loadout-linux-x64.tar.gz"
      sha256 "26cf5ac5e0f8bf8cf125026757fcadd3e59d6f0865266aef3a43900dc1c08951"
    end
  end

  def install
    bin.install "loadout"
  end

  test do
    assert_match "Usage: loadout", shell_output("#{bin}/loadout --help")
  end
end
