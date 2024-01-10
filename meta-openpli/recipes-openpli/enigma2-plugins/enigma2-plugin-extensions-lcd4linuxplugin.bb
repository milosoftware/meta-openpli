LICENSE = "Proprietary"
LIC_FILES_CHKSUM = "file://${OPENPLI_BASE}/LICENSE;md5=eb723b61539feef013de476e68b5c50a"

# make the origin overridable from OE config, for local mirroring
SRC_ORIGIN ?= "git://github.com/OpenPLi/enigma2-plugins.git;protocol=https"
SRC_URI := "${SRC_ORIGIN};branch=python3 "

DEPENDS = "virtual/libusb0 ncurses readline jpeg dbus-glib sqlite3 dpflib python3"
SRCREV = "${AUTOREV}"

S = "${WORKDIR}/git/lcd4linux/src"

do_install() {
	install -d ${D}/${libdir}/enigma2/python/Plugins/Extensions/LCD4linux/
	cp -rf ${S}/plugin.py ${D}/${libdir}/enigma2/python/Plugins/Extensions/LCD4linux/plugin.py
}

FILES:${PN} = "${libdir}/enigma2/python/Plugins/Extensions/LCD4linux/plugin.py"
FILES:enigma2-plugin-extensions-lcd4linux += "${libdir}/enigma2/python/Components/Renderer/*.pyc"
FILES:enigma2-plugin-extensions-lcd4linux-src += "${libdir}/enigma2/python/Components/Renderer/*.py"
