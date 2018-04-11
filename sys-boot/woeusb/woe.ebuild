
<!-- saved from url=(0048)http://gpo.zugaina.org/AJAX/Ebuild/38362472/View -->
<html hc="a0" hcx="0"><head><meta http-equiv="Content-Type" content="text/html; charset=windows-1252"><style id="hc_style" type="text/css">html[hc="a0"] {   -webkit-filter: url("http://gpo.zugaina.org/AJAX/Ebuild/38362472/View#hc_extension_off"); } html[hcx="0"] img[src*="jpg"], html[hcx="0"] img[src*="jpeg"], html[hcx="0"] svg image, html[hcx="0"] img.rg_i, html[hcx="0"] embed, html[hcx="0"] object, html[hcx="0"] video {   -webkit-filter: url("http://gpo.zugaina.org/AJAX/Ebuild/38362472/View#hc_extension_off"); }  html[hc="a1"] {   -webkit-filter: url("http://gpo.zugaina.org/AJAX/Ebuild/38362472/View#hc_extension_highcontrast"); } html[hcx="1"] img[src*="jpg"], html[hcx="1"] img[src*="jpeg"], html[hcx="1"] img.rg_i, html[hcx="1"] svg image, html[hcx="1"] embed, html[hcx="1"] object, html[hcx="1"] video {   -webkit-filter: url("http://gpo.zugaina.org/AJAX/Ebuild/38362472/View#hc_extension_highcontrast_back"); }  html[hc="a2"] {   -webkit-filter: url("http://gpo.zugaina.org/AJAX/Ebuild/38362472/View#hc_extension_grayscale"); } html[hcx="2"] img[src*="jpg"], html[hcx="2"] img[src*="jpeg"], html[hcx="2"] img.rg_i, html[hcx="2"] svg image, html[hcx="2"] embed, html[hcx="2"] object, html[hcx="2"] video {   -webkit-filter: url("http://gpo.zugaina.org/AJAX/Ebuild/38362472/View#hc_extension_grayscale_back"); }  html[hc="a3"] {   -webkit-filter: url("http://gpo.zugaina.org/AJAX/Ebuild/38362472/View#hc_extension_invert"); } html[hcx="3"] img[src*="jpg"], html[hcx="3"] img[src*="jpeg"], html[hcx="3"] img.rg_i, html[hcx="3"] svg image, html[hcx="3"] embed, html[hcx="3"] object, html[hcx="3"] video {   -webkit-filter: url("http://gpo.zugaina.org/AJAX/Ebuild/38362472/View#hc_extension_invert_back"); }  html[hc="a4"] {   -webkit-filter: url("http://gpo.zugaina.org/AJAX/Ebuild/38362472/View#hc_extension_invert_grayscale"); } html[hcx="4"] img[src*="jpg"], html[hcx="4"] img[src*="jpeg"], html[hcx="4"] img.rg_i, html[hcx="4"] svg image, html[hcx="4"] embed, html[hcx="4"] object, html[hcx="4"] video {   -webkit-filter: url("http://gpo.zugaina.org/AJAX/Ebuild/38362472/View#hc_extension_invert_back"); }  html[hc="a5"] {   -webkit-filter: url("http://gpo.zugaina.org/AJAX/Ebuild/38362472/View#hc_extension_yellow_on_black"); } html[hcx="5"] img[src*="jpg"], html[hcx="5"] img[src*="jpeg"], html[hcx="5"] img.rg_i, html[hcx="5"] svg image, html[hcx="5"] embed, html[hcx="5"] object, html[hcx="5"] video {   -webkit-filter: url("http://gpo.zugaina.org/AJAX/Ebuild/38362472/View#hc_extension_yellow_on_black_back"); }</style></head><body><pre class="ebuild"># Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 qmake-utils autotools

DESCRIPTION="Creates windows installer on usb media from an iso image"
HOMEPAGE="https://github.com/slacka/WoeUSB"
SRC_URI=""

EGIT_COMMIT="v3.1.4"
EGIT_REPO_URI="https://github.com/slacka/WoeUSB"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	sys-apps/coreutils
	sys-apps/grep
	sys-apps/util-linux
	sys-block/parted
	sys-fs/ntfs3g
	sys-fs/dosfstools
	sys-boot/grub:2[grub_platforms_pc]
	x11-libs/wxGTK:3.0
	net-misc/wget
"

src_prepare() {
	eautoreconf
	default
}

src_compile() {
	eautomake || die "eautomake failed"
}

src_install() {
	emake DESTDIR="${D}" install
}
</pre><!-- ajax rendered in 0.0156 seconds --><div id="hc_extension_bkgnd" style="position: fixed; left: 0px; top: 0px; right: 0px; bottom: 0px; z-index: -1999999999; display: block; background: none 0% 0% / auto repeat scroll padding-box border-box rgb(255, 255, 255);"></div><span id="hc_extension_svg_filters" hidden=""><svg xmlns="http://www.w3.org/2000/svg" version="1.1"><defs><filter x="0" y="0" width="99999" height="99999" id="hc_extension_off"><fecomponenttransfer><fefuncr type="table" tableValues="0 1"></fefuncr><fefuncg type="table" tableValues="0 1"></fefuncg><fefuncb type="table" tableValues="0 1"></fefuncb></fecomponenttransfer></filter><filter x="0" y="0" width="99999" height="99999" id="hc_extension_highcontrast"><fecomponenttransfer><fefuncr type="gamma" exponent="3.0"></fefuncr><fefuncg type="gamma" exponent="3.0"></fefuncg><fefuncb type="gamma" exponent="3.0"></fefuncb></fecomponenttransfer></filter><filter x="0" y="0" width="99999" height="99999" id="hc_extension_highcontrast_back"><fecomponenttransfer><fefuncr type="gamma" exponent="0.33"></fefuncr><fefuncg type="gamma" exponent="0.33"></fefuncg><fefuncb type="gamma" exponent="0.33"></fefuncb></fecomponenttransfer></filter><filter x="0" y="0" width="99999" height="99999" id="hc_extension_grayscale"><fecolormatrix type="matrix" values="0.2126 0.7152 0.0722 0 0 0.2126 0.7152 0.0722 0 0 0.2126 0.7152 0.0722 0 0 0 0 0 1 0"></fecolormatrix><fecomponenttransfer><fefuncr type="gamma" exponent="3"></fefuncr><fefuncg type="gamma" exponent="3"></fefuncg><fefuncb type="gamma" exponent="3"></fefuncb></fecomponenttransfer></filter><filter x="0" y="0" width="99999" height="99999" id="hc_extension_grayscale_back"><fecomponenttransfer><fefuncr type="gamma" exponent="0.33"></fefuncr><fefuncg type="gamma" exponent="0.33"></fefuncg><fefuncb type="gamma" exponent="0.33"></fefuncb></fecomponenttransfer></filter><filter x="0" y="0" width="99999" height="99999" id="hc_extension_invert"><fecomponenttransfer><fefuncr type="gamma" amplitude="-1" exponent="3" offset="1"></fefuncr><fefuncg type="gamma" amplitude="-1" exponent="3" offset="1"></fefuncg><fefuncb type="gamma" amplitude="-1" exponent="3" offset="1"></fefuncb></fecomponenttransfer></filter><filter x="0" y="0" width="99999" height="99999" id="hc_extension_invert_back"><fecomponenttransfer><fefuncr type="table" tableValues="1 0"></fefuncr><fefuncg type="table" tableValues="1 0"></fefuncg><fefuncb type="table" tableValues="1 0"></fefuncb></fecomponenttransfer><fecomponenttransfer><fefuncr type="gamma" exponent="1.7"></fefuncr><fefuncg type="gamma" exponent="1.7"></fefuncg><fefuncb type="gamma" exponent="1.7"></fefuncb></fecomponenttransfer></filter><filter x="0" y="0" width="99999" height="99999" id="hc_extension_invert_grayscale"><fecolormatrix type="matrix" values="0.2126 0.7152 0.0722 0 0 0.2126 0.7152 0.0722 0 0 0.2126 0.7152 0.0722 0 0 0 0 0 1 0"></fecolormatrix><fecomponenttransfer><fefuncr type="gamma" amplitude="-1" exponent="3" offset="1"></fefuncr><fefuncg type="gamma" amplitude="-1" exponent="3" offset="1"></fefuncg><fefuncb type="gamma" amplitude="-1" exponent="3" offset="1"></fefuncb></fecomponenttransfer></filter><filter x="0" y="0" width="99999" height="99999" id="hc_extension_yellow_on_black"><fecomponenttransfer><fefuncr type="gamma" amplitude="-1" exponent="3" offset="1"></fefuncr><fefuncg type="gamma" amplitude="-1" exponent="3" offset="1"></fefuncg><fefuncb type="gamma" amplitude="-1" exponent="3" offset="1"></fefuncb></fecomponenttransfer><fecolormatrix type="matrix" values="0.3 0.5 0.2 0 0 0.3 0.5 0.2 0 0 0 0 0 0 0 0 0 0 1 0"></fecolormatrix></filter><filter x="0" y="0" width="99999" height="99999" id="hc_extension_yellow_on_black_back"><fecomponenttransfer><fefuncr type="table" tableValues="1 0"></fefuncr><fefuncg type="table" tableValues="1 0"></fefuncg><fefuncb type="table" tableValues="1 0"></fefuncb></fecomponenttransfer><fecomponenttransfer><fefuncr type="gamma" exponent="0.33"></fefuncr><fefuncg type="gamma" exponent="0.33"></fefuncg><fefuncb type="gamma" exponent="0.33"></fefuncb></fecomponenttransfer></filter></defs></svg></span></body></html>