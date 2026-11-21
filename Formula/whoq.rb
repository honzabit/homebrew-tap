class Whoq < Formula
  desc "RDAP-first WHOIS for humans and agents"
  homepage "https://github.com/honzabit/whoq"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.6/whoq-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "2f9e8dba35d9f75ccfe1af0232ee9c235bdce1ed6c8afe853a467e193225d506"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.6/whoq-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "bb7e22be01dd9ad00d2622b511b4a7ea193e4e7fc4e6d6419914631166e99659"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.6/whoq-v0.1.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "58bd735739ed3cddc1da2a0d452bc42d4fb52ad641ede5dfddf499476759f6f5"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.6/whoq-v0.1.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "35288a15df754926340e4d35727c85a2665d48e64c912f353ef7434b67d14ea0"
    end
  end

  def install
    bin.install "whoq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whoq --version")
  end
end
