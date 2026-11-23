class K10xcodechangeversion < Formula
  desc "Change an Xcode project's version metadata (objectVersion, deployment target) with backup/restore"
  homepage "https://github.com/kalashrah/homebrew-k10"
  url "https://github.com/kalashrah/homebrew-k10/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "REPLACE_WITH_SHA256"
  license "MIT"

  depends_on :macos

  def install
    bin.install "bin/k10xcodechangeversion"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/k10xcodechangeversion 2>&1", 1)
  end
end
