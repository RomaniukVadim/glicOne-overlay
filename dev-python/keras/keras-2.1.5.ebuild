# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=6
PYTHON_COMPAT=(python{2_7,3_4,3_5,3_6})
inherit distutils-r1 python-utils-r1

DESCRIPTION="Deep Learning for humans"
HOMEPAGE="http://keras.io/"
LICENSE="MIT"
SRC_URI="https://github.com/keras-team/${PN}/archive/${PV}.tar.gz"
SLOT="0"
IUSE="python"
RESTRICT="mirror"
RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
