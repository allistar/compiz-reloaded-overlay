# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools git-r3

DESCRIPTION="Compiz Option code Generator"
HOMEPAGE="https://gitlab.com/compiz"
EGIT_REPO_URI="https://github.com/compiz-reloaded/compiz-bcop.git"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS=""

RDEPEND="dev-libs/libxslt"

DEPEND="${RDEPEND}
	virtual/pkgconfig
"

src_prepare(){
	default
	eautoreconf
}
