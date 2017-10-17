class Checkpatch < Formula
  desc "Homebrew formula for the Linux Kernel's `checkpatch.pl`"
  homepage "https://github.com/riboseinc/checkpatch"
  head "https://github.com/riboseinc/checkpatch.git"

  def install
    bin.install 'checkpatch.pl'
  end
end
