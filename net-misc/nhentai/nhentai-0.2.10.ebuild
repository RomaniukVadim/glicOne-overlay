# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=6
PYTHON_COMPAT=(python2_7)
inherit distutils-r1 python-utils-r1

DESCRIPTION="nhentai doujinshi downloader http://nhentai.net"
HOMEPAGE="https://github.com/RicterZ/nhentai"
SRC_URI="https://github.com/RicterZ/${PN}/archive/${PVR}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE="python_targets_python2_7 python"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

src_install() {
	      default
}
