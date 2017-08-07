class Intltool < Formula
  desc "String tool"
  homepage "https://wiki.freedesktop.org/www/Software/intltool"
  url "https://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz"
  sha256 "67c74d94196b153b774ab9f89b2fa6c6ba79352407037c8c14d5aeb334e959cd"

  depends_on "XML::Parser" => :perl unless OS.mac?

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--disable-silent-rules"
    system "make", "install"
    Dir[bin/"intltool-*"].each do |f|
      inreplace f, %r{^#!\/.*\/perl -w}, "#!/usr/bin/env perl"
      inreplace f, /^(use strict;)/, "\\1\nuse warnings;"
    end unless OS.mac?
  end

  test do
    system bin/"intltool-extract", "--help"
  end
end
