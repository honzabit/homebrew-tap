class Whoq < Formula
  desc "RDAP-first WHOIS for humans and agents"
  homepage "https://github.com/honzabit/whoq"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.9/whoq-v0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "8059302f2c5f07e4c6c1e62d3776a1ae63a03f89d89388b6575b679ffe2d912e"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.9/whoq-v0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "de6cc8ab3fa71c512454f716afb2bf9bdeda0c79fe6dc6c8a05200dba8b31481"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.9/whoq-v0.1.9-aarch64-unknown-linux-musl.tar.gz"
      sha256 "90d0e52947f63a0f2f1a065f9511b764c751f690a699c455b34dcdd9558a82b1"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.9/whoq-v0.1.9-x86_64-unknown-linux-musl.tar.gz"
      sha256 "745bb5c80d82ef42478031648eb7bf3b1c1ea0b39f9c4e67887d20eef1bdfc0a"
    end
  end

  def install
    bin.install "whoq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whoq --version")
  end
end
