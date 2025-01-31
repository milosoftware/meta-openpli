SUMMARY = "OpenPLi Network Time Protocol daemon and utilities"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
    file://startntpd \
"

FILES:${PN}:append = " \
    ${sysconfdir}/network/if-up.d/startntpd \
"

do_install:append() {
    install -d ${D}${sysconfdir}/network/if-up.d
    install -m 755 ${WORKDIR}/startntpd ${D}${sysconfdir}/network/if-up.d
}

# do not add start, only stop links
INITSCRIPT_PARAMS = "stop 20 0 1 6 ."
