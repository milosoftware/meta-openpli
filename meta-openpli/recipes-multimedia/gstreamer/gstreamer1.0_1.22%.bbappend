FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

PV = "1.24.12"

SRC_URI[sha256sum] = "b3522d1b4fe174fff3b3c7f0603493e2367bd1c43f5804df15b634bd22b1036f"

SRC_URI:append = " file://001-revert-use-new-gst-adapter-get-buffer.patch"
SRC_URI:remove = "file://0005-allocator-Avoid-integer-overflow-when-allocating-sys.patch"
