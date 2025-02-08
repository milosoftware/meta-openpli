PACKAGECONFIG = "${GSTREAMER_ORC} a52dec mpeg2dec cdio" 

PV = "1.24.12"

SRC_URI[sha256sum] = "19ed6eef4ea1a742234fb35e2cdb107168595a4dd409a9fac0b7a16543eee78b"

PACKAGECONFIG[amrnb]    = ""
PACKAGECONFIG[amrwb]    = ""
