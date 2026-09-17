class Scryr < Formula
  desc "Architecture maps and manifest CLI"
  homepage "https://github.com/scryr-app/scryr-dev"
  version "0.7.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/scryr-app/scryr-dev/releases/download/v0.7.0/scryr-darwin-aarch64.tar.gz"
      sha256 "440fc157309f39b18fcd659494bccaf7531adf533738b9e1ded3313483f81833"
    end
    on_intel do
      url "https://github.com/scryr-app/scryr-dev/releases/download/v0.7.0/scryr-darwin-x86_64.tar.gz"
      sha256 "d91e84c67b2dc32427f4e3703831e824c5849130de25bf299ac5ead1e0ab5651"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/scryr-app/scryr-dev/releases/download/v0.7.0/scryr-linux-aarch64.tar.gz"
      sha256 "c1218341560b6db53e80ac5209bd4e599a17391a2c432d0a498882846b2a5140"
    end
    on_intel do
      url "https://github.com/scryr-app/scryr-dev/releases/download/v0.7.0/scryr-linux-x86_64.tar.gz"
      sha256 "a6f65a2a6dc274f9d9e04175e55db1b3317874cfb356d1b986f61c575ca5f348"
    end
  end
  def install
    bin.install "scryr"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/scryr --version")
  end
end
