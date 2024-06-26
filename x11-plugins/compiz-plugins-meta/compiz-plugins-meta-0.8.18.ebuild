# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Compiz plugins (meta)"
HOMEPAGE="https://gitlab.com/compiz"
SRC_URI=""

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="community compicc experimental extra extra-snowflake-textures"

RDEPEND="
	>=x11-plugins/compiz-plugins-main-${PV}
	community? ( >=x11-plugins/compiz-plugins-community-${PV} )
	compicc? ( >=x11-plugins/compicc-0.8.10 )
	experimental? ( >=x11-plugins/compiz-plugins-experimental-${PV} )
	extra? ( >=x11-plugins/compiz-plugins-extra-${PV} )
	extra-snowflake-textures? ( >=x11-plugins/compiz-extra-snowflake-textures-${PV} )
"
