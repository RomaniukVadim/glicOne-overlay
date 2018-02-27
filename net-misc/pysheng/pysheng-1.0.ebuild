# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=(python{2_7})

DESCRIPTION="Download books from Google Books as PNG images. It can be run either from the command-line or using a simple GUI (graphical interface)"
HOMEPAGE="https://github.com/pysheng/pysheng"
SRC_URI="https://github.com/RomaniukVadim/pysheng/releases/download/v1.0/${PN}_v${PVR}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""
S=${WORKDIR}/${PN}
DEPEND=""
RDEPEND="${DEPEND}"

python_install_all() {
	distutils-r1_python_install_all
}