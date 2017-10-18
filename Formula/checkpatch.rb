class Checkpatch < Formula
  desc "Homebrew formula for the Linux Kernel's `checkpatch.pl`"
  homepage "https://github.com/riboseinc/checkpatch"
  head "https://github.com/riboseinc/checkpatch.git"

  depends_on "perl"

  # patch
  patch :p0 do
    url "https://raw.githubusercontent.com/riboseinc/checkpatch/master/patches/checkpatch.pl.patch"
    sha256 "e1508ba9d19b1a485a4e2d266e7a0833725d58b2550acdc5be61e98ca2f23879"
  end

  def install
    share.install %w(
      checkpatch.pl
      spelling.txt
    )
    doc.install "LICENSE.GPLv2.md"

    (share/"const_structs.checkpatch").write <<-EOS.undent
      invalid.struct.name
    EOS

    bin.install %(git-checkpatch)
    bin.install_symlink share/"checkpatch.pl" => "checkpatch.pl"

  end
end
