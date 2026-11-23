class Whoq < Formula
  desc "RDAP-first WHOIS for humans and agents"
  homepage "https://github.com/honzabit/whoq"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.8/whoq-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "3a92cf4d9d402f2ca06f3b379b7a5b985282797ac7bfdedd4d20c2ee256fc69a"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.8/whoq-v0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "270b81ebb99de6495cff35733eedb2e948540df0c815eff69d79c8de94f47eab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.8/whoq-v0.1.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "83916a4498b249273d4107cf1b71cecd35c608422d7009a1b44c35e81b585f42"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.8/whoq-v0.1.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb823d51b6fe313ac2af71f8dcb1dbe5b2154ea2d2a302d3bf8632b9f9642fc9"
    end
  end

  def install
    bin.install "whoq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whoq --version")
  end
end
