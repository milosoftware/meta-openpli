SUMMARY = "Python Levenshtein"
HOMEPAGE = "http://github.com/joncasdam/python-Levenshtein"
SECTION = "devel/python"
DEPENDS = "python3"
LICENSE = "LGPL-2.0-or-later"
LIC_FILES_CHKSUM = " file://COPYING;md5=24b9569831c46d4818450b55282476b4"

DEPENDS = "python3-scikit-build-native"

SRC_URI = "https://files.pythonhosted.org/packages/31/72/58d77cb80b3c130d94f53a8204ffad9acfddb925b2fb5818ff9af0b3c832/python_levenshtein-0.26.1.tar.gz"

SRC_URI[md5sum] = "7280aaecfb062217a01772e938f874a7"
SRC_URI[sha256sum] = "24ba578e28058ebb4afa2700057e1678d7adf27e43cd1f17700c09a9009d5d3a"

S = "${WORKDIR}/python_levenshtein-${PV}"

include python3-package-split.inc
