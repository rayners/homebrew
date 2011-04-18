require 'formula'

class Automake < Formula
  url 'http://ftp.gnu.org/gnu/automake/automake-1.11.tar.gz'
  homepage ''
  md5 'fab0bd2c3990a6679adaf9eeac0c6d2a'

  # depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
