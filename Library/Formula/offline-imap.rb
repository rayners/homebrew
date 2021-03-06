require 'formula'

class OfflineImap < Formula
  url "https://github.com/nicolas33/offlineimap/tarball/v6.3.2"
  homepage "https://github.com/nicolas33/offlineimap"
  md5 '73ef6b4685d7651261f9591949f681be'

  def install
    libexec.install 'bin/offlineimap' => 'offlineimap.py'
    libexec.install 'offlineimap'
    bin.mkpath
    ln_s libexec+'offlineimap.py', bin+'offlineimap'
  end
end
