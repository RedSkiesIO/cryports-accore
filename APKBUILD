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
depends="make automake cmake autoconf git"
install=""
subpackages=""
replaces="accore-installer"
options="!check !postcheck !fhs"
source="http://10.84.172.118/atlas/us/-/archive/master/us-master.tar.gz"
builddir="$srcdir/us"

build() {
	mv /home/builder/cryptos/src/src/us-master /home/builder/cryptos/src/src/us;
	cd $builddir;
	sudo ./bin/install_fcgi;
	sudo ./bin/install_jsoncpp;
	sudo ./bin/install_libsecp256k1;
	make cryptos-debug;
}

package() {
	mkdir -p "$pkgdir";
        mkdir -p "$pkgdir"/etc/init.d;
	install -d "$builddir" "$pkgdir"/etc/accore;
	install -Dm644 "$builddir/gov/libusgov.so"  "$pkgdir"/usr/local/lib;
	install -Dm644 "$builddir/wallet/libuswallet.so" "$pkgdir"/usr/local/lib;
	install -Dm644 "$builddir/govx/us-gov" "$pkgdir"/usr/local/bin;
	install -Dm644 "$builddir/walletx/us-wallet" "$pkgdir"/usr/local/bin;
	install -Dm644 "$builddir/cryptos/etc/init.d/us-wallet" "$pkgdir"/etc/init.d/;
	install -Dm644 "$builddir/cryptos/etc/init.d/us-gov" "$pkgdir"/etc/init.d/;
	install -d "/usr/local/include/fastcgi++" "$pkgdir""/usr/local/include/fastcgi++";
}
