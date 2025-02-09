SUMMARY = "OpenPLi Network Time Protocol daemon and utilities"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
    file://ntpd-sync \
"

FILES:${PN}:append = " \
    ${sysconfdir}/network/if-up.d/ntpd-sync \
"

do_install:append() {
    install -d ${D}${sysconfdir}/network/if-up.d
    install -m 755 ${WORKDIR}/ntpd-sync ${D}${sysconfdir}/network/if-up.d
}
