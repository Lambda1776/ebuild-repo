# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="a Simple MPD player written in C"
HOMEPAGE="https://github.com/Lambda1776/SMP"
SRC_URI="https://github.com/Lambda1776/SMP/archive/refs/tags/0.1.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"


DEPEND="acct-user/mpd media-sound/mpc"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	    make DESTDIR=${D} install || die "make install failed"
}
