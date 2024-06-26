# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Extra snowflake textures for Compiz"
HOMEPAGE="https://wiki.gentoo.org/wiki/No_homepage"
EGIT_REPO_URI="https://github.com/ethus3h/${PN}.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

RDEPEND=">=x11-plugins/compiz-plugins-experimental-${PV}"

src_install() {
	insinto /usr/share/compiz/
	doins -r snow
	doins -r splash
}
