# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=6
PYTHON_COMPAT=(python2_7)
inherit distutils-r1 python-utils-r1

DESCRIPTION="Download books from Google Books as PNG images. It can be run either from the command-line or using a simple GUI (graphical interface)"
HOMEPAGE="https://github.com/pysheng/pysheng"
SRC_URI="https://github.com/RomaniukVadim/pysheng/releases/download/v${PVR}/${PN}_v${PVR}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE="python_targets_python2_7 python"
S=${WORKDIR}/${PN}
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
RESTRICT="mirror"

src_install() {
	      default
	      dobin bin/pysheng
	      dobin bin/pysheng-gui
}
