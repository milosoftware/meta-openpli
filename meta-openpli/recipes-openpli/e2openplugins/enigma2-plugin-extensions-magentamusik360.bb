MODULE = "MagentaMusik360"
DESCRIPTION = "MagentaMusik 360 Plugin"

inherit gittag
PV = "git"
PKGV = "${GITPKGVTAG}"

require conf/license/license-gplv2.inc
require openplugins-distutils.inc
