# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Tor Browser Bundle: Anonymous browsing using firefox and tor"
HOMEPAGE="https://www.torproject.org/projects/torbrowser.html"
SRC_URI="x86? (https://dist.torproject.org/torbrowser/7.5.1/tor-browser-linux32-7.5.1_en-US.tar.xz)
amd64? (https://dist.torproject.org/torbrowser/7.5.1/tor-browser-linux64-7.5.1_en-US.tar.xz)"
LICENSE="GPL"
SLOT="0"
KEYWORDS="x86 amd64"

RDEPEND="x11-libs/gtk+:2
	x11-libs/libXt
	startup-notification
	app-misc/mime-types
	dev-libs/dbus-glib
	media-libs/alsa-lib
	desktop-file-utils
	hicolor-icon-theme
	dev-libs/icu
	media-libs/libvpx
	dev-libs/libevent
 	dev-libs/nss
 	app-text/hunspell
	dev-db/sqlite"
DEPEND="gnome-extra/zenity
	kde-apps/kdialog
	media-libs/gst-plugins-good
	media-plugins/gst-plugins-libav
	dev-python/libpulseaudio
	x11-libs/libnotify"

RESTRICT="bindist mirror"

_localetor() {

	#
	# Checking if a `tor-browser` package exists for current locale; a different language can be
	# chosen by giving a `TORBROWSER_PKGLANG` environment variable to `makepkg`, for instance:
	#
	#	TORBROWSER_PKGLANG='en-US' makepkg
	#

	if [[ -z "${TORBROWSER_PKGLANG}" ]]; then

		local _urlbase="https://dist.torproject.org/torbrowser/${pkgver}/${pkgname}-${_archstr}-${pkgver}"
		local _fulllocale="$(locale | grep LANG | cut -d= -f2 | cut -d. -f1 | sed s/_/\-/)"
		local _shortlocale="$(locale | grep LANG | cut -d= -f2 | cut -d_ -f1)"

		if curl --output /dev/null --silent --head --fail "${_urlbase}_${_fulllocale}.tar.xz"; then
			echo -n "${_fulllocale}"
		elif curl --output /dev/null --silent --head --fail "${_urlbase}_${_shortlocale}.tar.xz"; then
			echo -n "${_shortlocale}"
		else
			echo -n 'en-US'
		fi

	else

		echo -n "${TORBROWSER_PKGLANG}"

	fi

}


src_install() {

	# use colors only if we have them
	if [[ $(which tput > /dev/null 2>&1 && tput -T "${TERM}" colors || echo -n '0') -ge 8 ]] ; then
		local _COL_YELLOW_='\e[0;33m'
		local _COL_LIGHTGREY_='\e[0;37m'
		local _COL_BRED_='\e[1;31m'
		local _COL_BBLUE_='\e[1;34m'
		local _COL_BWHITE_='\e[1;37m'
		local _COL_DEFAULT_='\e[0m'
	fi

	cd "${srcdir}"

	msg "Packaging ${pkgname} (language: ${_language})..."

	if [[ -z "${TORBROWSER_PKGLANG}" ]]; then
		echo -e "\n  ${_COL_BBLUE_}->${_COL_DEFAULT_} ${_COL_BRED_}NOTE:${_COL_DEFAULT_} If you want to package ${_COL_BWHITE_}${pkgname}${_COL_DEFAULT_} in a different language, please"
		echo -e "     set a \`${_COL_YELLOW_}TORBROWSER_PKGLANG${_COL_DEFAULT_}\` environment variable before running makepkg.\n"
		echo '     For instance:'
		echo -e "\n        ${_COL_LIGHTGREY_}TORBROWSER_PKGLANG='en-US' makepkg${_COL_DEFAULT_}\n"
	fi

	sed -i "s/__REPL_LANGUAGE__/${_language}/g"	"${pkgname}.desktop"

	sed -i "s/__REPL_NAME__/${pkgname}/g"		"${pkgname}.sh"
	sed -i "s/__REPL_VERSION__/${pkgver}/g"		"${pkgname}.sh"
	sed -i "s/__REPL_RELEASE__/${pkgrel}/g"		"${pkgname}.sh"
	sed -i "s/__REPL_LANGUAGE__/${_language}/g"	"${pkgname}.sh"
	sed -i "s/__REPL_ARCH__/${_archstr}/g"		"${pkgname}.sh"

	install -Dm 644 "${pkgname}.desktop"	"${pkgdir}/usr/share/applications/${pkgname}.desktop"
	install -Dm 644 "${pkgname}.png"	"${pkgdir}/usr/share/pixmaps/${pkgname}.png"
	install -Dm 755 "${pkgname}.sh"		"${pkgdir}/usr/bin/${pkgname}"

	install -Dm 644 "${pkgname}-${_archstr}-${pkgver}_${_language}.tar.xz" "${pkgdir}/opt/${pkgname}/${pkgname}-${_archstr}-${pkgver}_${_language}.tar.xz"


}