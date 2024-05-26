class Nudge < Formula
  desc "CLI Tool to send files Peer-to-Peer using Hole Punch"
  homepage "https://github.com/darmiel/nudge"
  url "https://github.com/darmiel/nudge/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "cf9ce8ed99cdf19471f93e20b267a23017d1ee61a18361c22a1c11c4a045576d"
  license ""
  head "https://github.com/darmiel/nudge.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/nudge", "-V"
  end
end
