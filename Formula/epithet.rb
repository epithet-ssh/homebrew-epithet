# This file was generated by GoReleaser. DO NOT EDIT.
class Epithet < Formula
  desc ""
  homepage "https://epithet.io/"
  version "0.0.8"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/epithet-ssh/epithet/releases/download/0.0.8/epithet_0.0.8_Darwin_x86_64.tar.gz"
    sha256 "f7bdf9e9cf0f152eb7368a158fdd615b67ed5e0a803ecc0d611c0e61e0313136"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/epithet-ssh/epithet/releases/download/0.0.8/epithet_0.0.8_Linux_x86_64.tar.gz"
      sha256 "2c4cd6d3210a8a6fcc30634677b1c839388958b7c6a2aa15117abed3b9b6a3cd"
    end
  end

  def install
    bin.install "epithet-agent"
    bin.install "epithet-auth"
    bin.install "epithet-ca"
  end

  def caveats; <<~EOS
    Installs the binaries, but no configs
  EOS
  end

  test do
    system "#{bin}/epithet-agent --version"
  end
end
