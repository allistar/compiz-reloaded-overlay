# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5,6} )

DISTUTILS_SINGLE_IMPL=1
inherit distutils-r1 eutils gnome2-utils

DESCRIPTION="Fusion Icon (Compiz tray icon) for Compiz 0.8.x series"
HOMEPAGE="https://gitlab.com/compiz"
SRC_URI="https://github.com/compiz-reloaded/${PN}/releases/download/v${PV}/${P}.tar.xz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="gtk2 gtk3 qt5"
REQUIRED_USE="?? ( gtk2 gtk3 ) ?? ( qt5 )  || ( gtk2 gtk3 qt5 )"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/compizconfig-python-0.8.12[${PYTHON_USEDEP}]
	<dev-python/compizconfig-python-0.9
	dev-python/pygobject:3[${PYTHON_USEDEP}]
	x11-apps/xvinfo
	x11-apps/mesa-progs
	>=x11-wm/compiz-0.8
	<x11-wm/compiz-0.9
	gtk2? (
		dev-libs/libappindicator:2
	)
	gtk3? (
		dev-libs/libappindicator:3
	)
	qt5? ( dev-python/PyQt5[${PYTHON_USEDEP}] )
"

DEPEND="${RDEPEND}"

python_configure_all() {
	mydistutilsargs=(
		build
		"--with-qt=$(usex qt5 5.0 4.0)"
		"--with-gtk=$(usex gtk3 3.0 2.0)"
	)
}

python_install_all() {
	mydistutilsargs=(
		install
		--prefix=/usr
	)
	distutils-r1_python_install_all
}

pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
