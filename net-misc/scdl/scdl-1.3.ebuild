# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=6
PYTHON_COMPAT=(python{3_4,3_5,3_6})
inherit distutils-r1 python-utils-r1

DESCRIPTION="Soundcloud Music Downloader (Python version)"
HOMEPAGE="https://github.com/flyingrub"
LICENSE="Apache-2.0"
SRC_URI="https://github.com/flyingrub/${PN}/archive/v${PVR}.tar.gz"
SLOT="0"
IUSE="python"
KEYWORDS="~amd64"
RESTRICT="mirror"
DEPEND="dev-python/termcolor
	dev-python/docopt
	media-libs/mutagen
	dev-python/requests
	dev-python/clint
	"
# pip3 install wget soundcloud

RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
${DEPEND}"
S="${WORKDIR}/${P}"

python_compile(){
        esetup.py build
}
python_install_all() {
        distutils-r1_python_install_all
}
python_install(){
        esetup.py install
        dobin "${D}"usr/lib/python-exec/python3.5/scdl
}


pkg_postinst() {
	elog "A sample configuration can be found in"
	elog ""
	elog "  /usr/share/doc/${PF}/scdl.cfg"
	elog ""
	elog "Don't forget create scdl.cfg and add your own Music path" 
	elog "and soundcloud auth_token in ~/.config/scdl/scdl.cfg"
}