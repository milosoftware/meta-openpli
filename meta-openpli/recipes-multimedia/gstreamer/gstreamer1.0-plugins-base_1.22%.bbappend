FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

RDEPENDS:libgstgl-1.0 = "libGLESv2.so"

PV = "1.24.10"

SRC_URI[sha256sum] = "ebd57b1be924c6e24f327dd55bab9d8fbaaebe5e1dc8fca784182ab2b12d23eb"

SRC_URI:append = " file://001-riff-media-added-fourcc-to-all-ffmpeg-mpeg4-video-caps.patch \
                   file://002-subparse-avoid-false-negatives-dealing-with-UTF-8.patch \
                   file://define-surfaceless-mesa-macro.patch \
"

PACKAGECONFIG = "${GSTREAMER_ORC} alsa jpeg ogg opus pango png theora vorbis"
