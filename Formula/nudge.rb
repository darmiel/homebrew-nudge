class Nudge < Formula
  desc "CLI Tool to send files Peer-to-Peer using Hole Punch"
  homepage "https://github.com/darmiel/nudge"
  url "https://github.com/darmiel/nudge/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "97dd7f8e803e91aafe1eef59de1a43498731ab0f234199b7631923d4e12b3834"
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
