class Whoq < Formula
  desc "RDAP-first WHOIS for humans and agents"
  homepage "https://github.com/honzabit/whoq"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.7/whoq-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "ce110fa37e57f674760b647ed1fab6920c0fc63c39d6c378d751a8aa4566a0b0"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.7/whoq-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "d0d49f5c1ff32cdf2839e9f13066527c7af93f7b5c16c49762a8b8120034412c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.7/whoq-v0.1.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3664b276009114f97411933650558ba758fddc0101b7aaca1f43d13c5d9862d0"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.7/whoq-v0.1.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b4064d4d3d23f5e2f5c5119cd7889cc961658aa574e0c6746b5527d0e438215c"
    end
  end

  def install
    bin.install "whoq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whoq --version")
  end
end
