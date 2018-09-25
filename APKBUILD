# Contributor: James Kirby <james.kirby@atlascity.io>
# Maintainer: James Kirby <james.kirby@atlascity.io>
pkgname=accore
pkgver=0.0.1
pkgrel=1
pkgdesc="AC Core Node"
url="http://atlascity.io"
arch="x86_64 aarch64 armhf"
license="MIT"
makedepends=""
depends=""
install="$pkgname.post-install"
subpackages=""
replaces=""
source="http://10.84.172.118/atlas/us/-/archive/master/us-master.tar.gz"

package() {
    install -D -m755 "$srcdir"/acinstaller "$pkgdir"/etc/init.d/acinstaller
    install -D -m755 "$srcdir"/setup-cryptos-answerfile "$pkgdir"/tmp/setup-cryptos-answerfile
}
