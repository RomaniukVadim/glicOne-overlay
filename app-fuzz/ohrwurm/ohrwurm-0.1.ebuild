# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Ohrwurm is a small and simple RTP fuzzer"
HOMEPAGE="http://mazzoo.de/blog/2006/08/25"
SRC_URI="http://mazzoo.de/d/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="net-libs/libpcap"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i "s|-Wall|$CFLAGS|g" Makefile
}

src_compile() {
	emake || die "emake failed"
}

src_install() {
	dobin ohrwurm
	dodoc README.txt
}
