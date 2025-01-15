FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

PV = "1.24.10"

SRC_URI[sha256sum] = "fce748fa66d7a8ee1fb261489e59d01e3fa787623d6d5c35068416fe7cd0acb3"

DEPENDS:append = " libsoup-2.4"
RDEPENDS:${PN}-soup += "libsoup-2.4"

SRC_URI:append = " file://001-gstrtpmp4gpay-set-dafault-value-for-MPEG4-without-co.patch"
SRC_URI:remove = "file://0001-qt-include-ext-qt-gstqtgl.h-instead-of-gst-gl-gstglf.patch \
                  file://0001-v4l2-Define-ioctl_req_t-for-posix-linux-case.patch \
                  file://0001-qtdemux-Skip-zero-sized-boxes-instead-of-stopping-to.patch \
                  file://0002-qtdemux-Fix-integer-overflow-when-allocating-the-sam.patch \
                  file://0003-qtdemux-Fix-debug-output-during-trun-parsing.patch \
                  file://0004-qtdemux-Don-t-iterate-over-all-trun-entries-if-none-.patch \
                  file://0005-qtdemux-Check-sizes-of-stsc-stco-stts-before-trying-.patch \
                  file://0006-qtdemux-Make-sure-only-an-even-number-of-bytes-is-pr.patch \
                  file://0007-qtdemux-Make-sure-enough-data-is-available-before-re.patch \
                  file://0008-qtdemux-Fix-length-checks-and-offsets-in-stsd-entry-.patch \
                  file://0009-qtdemux-Fix-error-handling-when-parsing-cenc-sample-.patch \
                  file://0010-qtdemux-Make-sure-there-are-enough-offsets-to-read-w.patch \
                  file://0011-qtdemux-Actually-handle-errors-returns-from-various-.patch \
                  file://0012-qtdemux-Check-for-invalid-atom-length-when-extractin.patch \
                  file://0013-qtdemux-Add-size-check-for-parsing-SMI-SEQH-atom.patch \
                  file://0014-gdkpixbufdec-Check-if-initializing-the-video-info-ac.patch \
                  file://0015-matroskademux-Only-unmap-GstMapInfo-in-WavPack-heade.patch \
                  file://0016-matroskademux-Fix-off-by-one-when-parsing-multi-chan.patch \
                  file://0017-matroskademux-Check-for-big-enough-WavPack-codec-pri.patch \
                  file://0018-matroskademux-Don-t-take-data-out-of-an-empty-adapte.patch \
                  file://0019-matroskademux-Skip-over-laces-directly-when-postproc.patch \
                  file://0020-matroskademux-Skip-over-zero-sized-Xiph-stream-heade.patch \
                  file://0021-matroskademux-Put-a-copy-of-the-codec-data-into-the-.patch \
                  file://0022-jpegdec-Directly-error-out-on-negotiation-failures.patch \
                  file://0023-qtdemux-Avoid-integer-overflow-when-parsing-Theora-e.patch \
                  file://0024-avisubtitle-Fix-size-checks-and-avoid-overflows-when.patch \
                  file://0025-wavparse-Check-for-short-reads-when-parsing-headers-.patch \
                  file://0026-wavparse-Make-sure-enough-data-for-the-tag-list-tag-.patch \
                  file://0027-wavparse-Fix-parsing-of-acid-chunk.patch \
                  file://0028-wavparse-Check-that-at-least-4-bytes-are-available-b.patch \
                  file://0029-wavparse-Check-that-at-least-32-bytes-are-available-.patch \
                  file://0030-wavparse-Fix-clipping-of-size-to-the-file-size.patch \
                  file://0031-wavparse-Check-size-before-reading-ds64-chunk.patch \
"

PACKAGECONFIG = "${GSTREAMER_ORC} amrnb amrwb bz2 cairo flac gdk-pixbuf gudev jpeg lame libpng \
                 mpg123 soup2 speex taglib v4l2 vpx wavpack \
"

PACKAGECONFIG[amrnb] = "-Damrnb=enabled,-Damrnb=disabled,opencore-amr"
PACKAGECONFIG[amrwb] = "-Damrwbdec=enabled,-Damrwbdec=disabled,opencore-amr"
