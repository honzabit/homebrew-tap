class Whoq < Formula
  desc "RDAP-first WHOIS for humans and agents"
  homepage "https://github.com/honzabit/whoq"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.2/whoq-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "c76f3dd435aef8e1f18cc80d8e412acb6ea6504f96d96f9a13b872f2f9a6d74e"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.2/whoq-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "edcd1d74196d9e03215e8e26fbed34b1289f28dcce5015f196a8e1abacd2b325"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.2/whoq-v0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9ce3dca2edca77460a4c6e30e4b3f25ae73a3ad2b908656bce6885cd4a037d9e"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.2/whoq-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6f273152be03521f3dc36f2393d5b710d6d1329723f798491c17b08c815d242"
    end
  end

  def install
    bin.install "whoq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whoq --version")
  end
end
