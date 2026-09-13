class Scryr < Formula
  desc "Architecture maps and manifest CLI"
  homepage "https://github.com/scryr-app/scryr-dev"
  version "0.6.3"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/scryr-app/scryr-dev/releases/download/v0.6.3/scryr-darwin-aarch64.tar.gz"
      sha256 "c7dc838ecab1336fb4f1a1585d060d37906533b0bac45a9188cf95abbb84b965"
    end
    on_intel do
      url "https://github.com/scryr-app/scryr-dev/releases/download/v0.6.3/scryr-darwin-x86_64.tar.gz"
      sha256 "fe8272876a2b79bdb7641c56e828e9d68d8babbad1a718b1052c53cd6a11b10a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/scryr-app/scryr-dev/releases/download/v0.6.3/scryr-linux-aarch64.tar.gz"
      sha256 "5f1faab1d46c8900979aaa5fe9fc07faa00034eaccebbed53da9a3d49a5c8cc7"
    end
    on_intel do
      url "https://github.com/scryr-app/scryr-dev/releases/download/v0.6.3/scryr-linux-x86_64.tar.gz"
      sha256 "5392fedc42c03b51929e00f871390e28a30dbd6c6834bbca8dcd4d231c657888"
    end
  end
  def install
    bin.install "scryr"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/scryr --version")
  end
end
