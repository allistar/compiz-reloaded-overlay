# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools git-r3

DESCRIPTION="Emerald window decorator themes"
HOMEPAGE="https://gitlab.com/compiz"
EGIT_REPO_URI="https://github.com/compiz-reloaded/emerald-themes.git"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS=""
RDEPEND=">=x11-wm/emerald-${PV}"

src_prepare(){
	default
	eautoreconf
}
