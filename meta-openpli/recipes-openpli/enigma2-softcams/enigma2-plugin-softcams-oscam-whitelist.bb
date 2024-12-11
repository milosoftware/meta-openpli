DESCRIPTION = "OsCam iCam whitelist"
MAINTAINER = "AbuBaniaz"
LICENSE = "CLOSED"

PV = "1.0+${DATE}"

SRC_URI = "https://raw.githubusercontent.com/biko-73/OsCam_EMU/refs/heads/main/whitelist_streamrelay"

SRC_URI[sha256sum] = "7bf16fcbe7e3dc6584fe2f27045756df337425e5bf55ebdc2c81d7f8fc6a68f6"

BB_STRICT_CHECKSUM = "0"

DEPENDS = "enigma2-plugin-softcams-oscam"

inherit allarch

do_patch[vardepsexclude]="DATE"

do_install () {
    install -d ${D}${sysconfdir}/enigma2/
	        if [ -e ${S}/whitelist_streamrelay ]; then
		rm -f ${S}/whitelist_streamrelay
	fi
   cp -r ${WORKDIR}/whitelist_streamrelay ${D}${sysconfdir}/enigma2
}
