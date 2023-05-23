# Maintainer: francabicon franc <francabicon@aol.com>
# Contributor: francabicon franc <francabicon@aol.com>
pkgname=brother-dcp-t710w-lpr-bin
pkgver=1.0.0
pkgrel=0
pkgdesc="Driver for the Brother DCP-T710W wifi multifuncional printer"
url="http://solutions.brother.com/linux/en_us/index.html"
license=('custom:brother')
install="brother-dcpt710w.install"
depends= 'brother-cups-wrapper-common 1.0.0-3'
arch=('i686' 'x86_64')
optdepends=('sane: scanning support'
            'brscan4: making dcpt710w available to sane'
            'brscan-skey: scankey support if connected via usb')


if [[ "$CARCH" == "x86_64" ]] ; then
    depends=('a2ps' 'cups' 'lib32-glibc')
elif [[ "$CARCH" == "i686" ]] ; then
    depends=('a2ps' 'cups')
fi

source=(
    "http://download.brother.com/welcome/dlf103623/dcpt710wpdrv-$pkgver-$pkgrel.i386.rpm" \
    "fix_lp.patch"
)
sha256sums=(
	"3ac9025f221c15653df45b6dafc9a2916010c7965831dd322e4462492ab318fe"
    "cdf49a8528e1c936de3394b4d5d58882db5cc7a777c9b688692af9bf718260fb"
)

build() {
  cd "$srcdir"
	patch -Np0 < fix_lp.patch
}

post_install() {
	/opt/brother/Printers/dcpt710w/cupswrapper/cupswrapperdcpt710w
}

package()
{
    install -d $pkgdir/usr/bin
	install -d $pkgdir/var/spool/lpd
    install -Dm755 "$srcdir"/usr/bin/brprintconf_dcpt710w "$pkgdir"/usr/bin/
	cp -R $srcdir/opt $pkgdir/opt

}
