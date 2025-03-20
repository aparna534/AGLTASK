DESCRIPTION = "AGL Flutter App"
LICENSE = "MIT"

BB_STRICT_CHECKSUM = "0"
SRC_URI = "https://github.com/aparna534/AGLTASK"

S = "${WORKDIR}/git"

do_compile() {
	flutter build  linux 
}


do_install() {
	install -d ${D}${bindir}
	install -m 0755 ${S}/build/linux/x64/release/bundle/* ${D}${bindir}

}

FILES_${PN} += "${bindir}"




