FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

PV = "1.24.10"

SRC_URI[sha256sum] = "9fc45b1a332e8f812f09e95c281cd75969f6d1682d062a815db0e7bc047518fd"

SRC_URI:append = " file://001-revert-use-new-gst-adapter-get-buffer.patch"
SRC_URI:remove = "file://0005-allocator-Avoid-integer-overflow-when-allocating-sys.patch"
