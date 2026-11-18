class Whoq < Formula
  desc "RDAP-first WHOIS for humans and agents"
  homepage "https://github.com/honzabit/whoq"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.4/whoq-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "9dbf50475f9aa0f637b2dc5e31a25468b29237f2dc3a21e39f03acad5c3fc188"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.4/whoq-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "52917a731b76a41dffd7802e36f0d93e5fc5d9226f5a98825dbcbea082cbacc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.4/whoq-v0.1.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c4045dad00ee3f9793917a1f8aa6618a125263afe4a482d599ac2072c189f75e"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.4/whoq-v0.1.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf23d01a3bf92d28efcb1d3584710dd1109e5cc2659179db1eaaf609c332e505"
    end
  end

  def install
    bin.install "whoq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whoq --version")
  end
end
