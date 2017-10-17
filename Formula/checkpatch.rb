class Checkpatch < Formula
  desc "Homebrew formula for the Linux Kernel's `checkpatch.pl`"
  homepage "https://github.com/riboseinc/checkpatch"
  head "https://github.com/riboseinc/checkpatch.git"

  # patch
  patch :p0 do
    url "https://raw.githubusercontent.com/riboseinc/checkpatch/master/patches/checkpatch.pl.patch"
    sha256 "e1508ba9d19b1a485a4e2d266e7a0833725d58b2550acdc5be61e98ca2f23879"
  end

  def install
    bin.install 'checkpatch.pl'
    doc.install "spelling.txt"
  end
end
