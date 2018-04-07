# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=6
PYTHON_COMPAT=(python2_7)
inherit distutils-r1

DESCRIPTION="nhentai doujinshi downloader http://nhentai.net"
HOMEPAGE="https://github.com/RicterZ/nhentai"
SRC_URI="https://github.com/RicterZ/${PN}/archive/${PVR}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/beautifulsoup-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/future-0.15.2[${PYTHON_USEDEP}]
        >=dev-python/requests-2.5.0[${PYTHON_USEDEP}]
        >=dev-python/tabulate-0.7.5[${PYTHON_USEDEP}]
	>=dev-python/threadpool-1.2.7[${PYTHON_USEDEP}]	
        "
RDEPEND="${DEPEND}"
RESTRICT="mirror"
python_compile(){
        esetup.py build
}
python_install_all() {
        distutils-r1_python_install_all
}
python_install(){
        esetup.py install
        dobin "${D}"usr/lib/python-exec/python2.7/nhentai
}


