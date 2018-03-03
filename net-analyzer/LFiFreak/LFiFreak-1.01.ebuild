# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=6
PYTHON_COMPAT=(python2_7)

DESCRIPTION="A unique tool for exploiting local file inclusions using PHP Input, PHP Filter and Data URI methods."
HOMEPAGE="https://github.com/OsandaMalith/LFiFreak"
SRC_URI="https://github.com/RomaniukVadim/${PN}/archive/${PVR}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE="python_targets_python2_7 python"
DEPEND="dev-python/beautifulsoup"
RDEPEND="${DEPEND}"
RESTRICT="mirror"

src_install(){
	      dobin Binaries/Linux/LFI
}
