class Whoq < Formula
  desc "RDAP-first WHOIS for humans and agents"
  homepage "https://github.com/honzabit/whoq"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.0/whoq-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "664a9939e4399ce986ef7ff72991a12db6a5a3495f065d662ab48ebc668261f1"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.0/whoq-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "4480999b2d5196befd10cda7ef20a99899ee7677c98c8d173e972f3bb7d06ed7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.0/whoq-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e4cdb3b5a2f9cff956dd2e7fc51ba28985742a35ea5b1b73723d0020d11b600"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.0/whoq-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "46c6913333876be60c237a40a47d666c4c1aec0591ac3c730b87cebaaeed19b7"
    end
  end

  def install
    bin.install "whoq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whoq --version")
  end
end
