# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2


EAPI=6

EGIT_REPO_URI="https://github.com/HaCk3Dq/vk.git"
inherit git-r3
DESCRIPTION="NCurses interface client for VK"
HOMEPAGE="https://github.com/HaCk3Dq/vk"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"

DEPEND="sys-libs/ncurses
	dev-lang/dmd
	dev-util/dub
	dev-util/dlang-tools
	>=media-video/mpv-0.9.0
	"
RDEPEND="${DEPEND}"
src_compile() {
	dub build
}

src_install() {
	newbin vk vk-cli
}