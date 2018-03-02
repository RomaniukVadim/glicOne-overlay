#Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="NCurses interface client for VK"
HOMEPAGE="https://github.com/HaCk3Dq/vk"
LICENSE="Apache-2.0"
SRC_URI="https://github.com/HaCk3Dq/vk/releases/download/${PV}/${P}-64-bin.7z"
LICENSE="Apache 2.0"
SLOT="0"
IUSE="mpv"
KEYWORDS="~amd64"
RESTRICT="mirror"
RDEPEND="sys-libs/ncurses net-misc/curl dev-libs/openssl mpv? ( media-video/mpv )"
S="${WORKDIR}"

src_install() {
	mv ${P}-64-bin vk-cli
	dobin vk-cli
}