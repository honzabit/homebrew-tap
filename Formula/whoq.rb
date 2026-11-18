class Whoq < Formula
  desc "RDAP-first WHOIS for humans and agents"
  homepage "https://github.com/honzabit/whoq"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.3/whoq-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "573eeccc5e20bfe0e08546157727d206c1de2ed099995f8feb072a45ff11acce"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.3/whoq-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "f568edae6313f4afc7e1962c58cf71c67ddf62c3abcb1acbd4087c12fe102e66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.3/whoq-v0.1.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6ea18dc9d0114c1ca0f212894fde178e31c68cdd81151a4c38c4e622fe50325d"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.3/whoq-v0.1.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "daf23aaf242f429b530479150be5a9667fb71da6e1ad1f8ca65e97019f62699e"
    end
  end

  def install
    bin.install "whoq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whoq --version")
  end
end
