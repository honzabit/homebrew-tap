class Whoq < Formula
  desc "RDAP-first WHOIS for humans and agents"
  homepage "https://github.com/honzabit/whoq"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.5/whoq-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "9983958150f5878f98b8623fd91f1ce3711f232e7ed99c4210b893e73a914294"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.5/whoq-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "3c61624cfc0508fb234caa224dd8f2d3514c3a594b68697a365e7a152dba6c54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.5/whoq-v0.1.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "85fe844beb53360f75df6c5601f72187e3d5942a1dd56e24336e5ed5910efa54"
    end
    on_intel do
      url "https://github.com/honzabit/whoq/releases/download/v0.1.5/whoq-v0.1.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a0b9106a3b897a038c1953503e60ed2e1c8cab2accfa795a2ae94230bfadc492"
    end
  end

  def install
    bin.install "whoq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whoq --version")
  end
end
