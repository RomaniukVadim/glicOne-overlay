# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="Burn images to SD cards & USB drives, safe & easy"
HOMEPAGE="http://www.etcher.io/"
SRC_URI="x86?   ( https://github.com/resin-io/etcher/releases/download/v1.3.1/Etcher-cli-1.3.1-linux-x86.tar.gz )
amd64?   ( https://github.com/resin-io/etcher/releases/download/v1.3.1/Etcher-cli-1.3.1-linux-x64.tar.gz
 )"

KEYWORDS="x86 amd64"
LICENSE="Apache-2.0"
SLOT="0"
DEPEND=""
RDEPEND="net-libs/nodejs"
RESTRICT="mirror"
if use amd64; then
   S=${WORKDIR}/Etcher-cli-${PV}-linux-x64
elif use x86; then
   S=${WORKDIR}/Etcher-cli-${PV}-linux-x32
fi

src_install(){
	dodir /opt/"${PN}"
	cp -R "${S}"/* "${ED}/opt/"${PN}"" || die "Install failed!"
}