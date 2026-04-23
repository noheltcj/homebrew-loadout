class Loadout < Formula
  desc "CLI tool for managing and composing configuration fragments across projects"
  homepage "https://github.com/noheltcj/loadout"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.7.0/loadout-macos-arm64.tar.gz"
      sha256 "3b0acf5b29d05d1ca313164b54e03bcc26cd63c265e74ff5f1c1a50dd7488e04"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.7.0/loadout-macos-x64.tar.gz"
      sha256 "93b28b52dcb6d54b885e89bb43f9b9f4686efbe29cf70b58157a7e7edac38092"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noheltcj/loadout/releases/download/v0.7.0/loadout-linux-arm64.tar.gz"
      sha256 "6d77c7a2dfa9aa7bb65eaef18e9cba6facd5f3ed047fb2588df7a80734352ef7"
    else
      url "https://github.com/noheltcj/loadout/releases/download/v0.7.0/loadout-linux-x64.tar.gz"
      sha256 "eb96212d457140ef5eea33e28f970024f4efaff6f087a747e1ae3961e607d2ee"
    end
  end

  def install
    bin.install "loadout"
  end

  test do
    assert_match "Usage: loadout", shell_output("#{bin}/loadout --help")
  end
end
