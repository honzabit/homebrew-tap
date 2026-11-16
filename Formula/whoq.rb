class Whoq < Formula
  desc "RDAP-first WHOIS for humans and agents"
  homepage "https://github.com/honzabit/whoq"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.1/whoq-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "3c22487a713fc38675c5061c7bc308bec6f7859d9935165c5e81549d85917733"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.1/whoq-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "a711ec8e027c90ea954773cce1717bafb99fa4978b07756418b70226701c8a92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.1/whoq-v0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "179a015bb5ca486edbe0154932876c7ddf41299e4dc211bfc68b06f7a517ff29"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.1/whoq-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bccd148ef6d1021a574a16bd75dd5b5a37ddfe2b773c3cb74e6fa3a424c666ac"
    end
  end

  def install
    bin.install "whoq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whoq --version")
  end
end
