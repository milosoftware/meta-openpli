FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

PV = "1.24.12"

SRC_URI[sha256sum] = "3d386af3d1dbd1a06c74a6251250c269b481e703f0e3255ba89ef6c1e063afea"

SRC_URI:append = "file://001-rtmp-hls-tsdemux-fix.patch \
                  file://003-rtmp-fix-seeking-and-potential-segfault.patch \
"

PACKAGECONFIG = "${GSTREAMER_ORC} bz2 closedcaption curl dash dtls faac faad hls openssl opusparse \
                 rsvg rtmp sbc smoothstreaming sndfile ttml uvch264 webp \
"

EXTRA_OEMESON:remove = "-Dkate=disabled"
