UMMARY = "Python Levenshtein"
HOMEPAGE = "http://github.com/joncasdam/python-Levenshtein"
SECTION = "devel/python"
DEPENDS = "python3"
LICENSE = "LGPL-2.0-or-later"
LIC_FILES_CHKSUM = " file://COPYING;md5=e4dc568e8869637acb7c89f0889d8130"

DEPENDS = "ninja-native cmake-native python3-scikit-build-core-native"

PYPI_PACKAGE = "levenshtein"

SRC_URI[md5sum] = "aebd196b9cd79e1715027bc7ff612eb9"
SRC_URI[sha256sum] = "0d19ba22330d50609b2349021ec3cf7d905c6fe21195a2d0d876a146e7ed2575"

S = "${WORKDIR}/python-levenshtein-${PV}"

inherit pypi python_setuptools_build_meta

include python3-package-split.inc

INSANE_SKIP:${PN} += "already-stripped"
