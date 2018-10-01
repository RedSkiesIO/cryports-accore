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
    mkdir -p "$pkgdir"/etc/accore;
    mkdir -p "$pkgdir"/etc/init.d;
    mkdir -p "$pkgdir"/usr/local/lib;
    mkdir -p "$pkgdir"/usr/local/bin;
    mkdir -p "$pkgdir"/usr/local/include;
    mkdir -p "$pkgdir"/usr/local/lib64;
  
    cp "$builddir"/gov/libusgov.so  "$pkgdir"/usr/local/lib/libusgov.so;
    cp "$builddir"/wallet/libuswallet.so "$pkgdir"/usr/local/lib/libuswallet.so;
    cp "$builddir"/govx/us-gov "$pkgdir"/usr/local/bin/us-gov;
    cp "$builddir"/walletx/us-wallet "$pkgdir"/usr/local/bin/us-wallet;
    cp "$builddir"/cryptos/etc/init.d/us-wallet "$pkgdir"/etc/init.d/us-wallet;
    cp "$builddir"/cryptos/etc/init.d/us-gov "$pkgdir"/etc/init.d/us-gov;
    cp "/usr/local/lib64/libfastcgipp.so.3.0" "$pkgdir"/usr/local/lib64/libfastcgipp.so.3.0;
    cp "/usr/local/lib64/libfastcgipp.so.3" "$pkgdir"/usr/local/lib64/libfastcgipp.so.3;
    cp "/usr/local/lib64/libfastcgipp.so" "$pkgdir"/usr/local/lib64/libfastcgipp.so;
    cp "/usr/local/lib64/pkgconfig/jsoncpp.pc" "$pkgdir"/usr/local/lib64/pkgconfig/jsoncpp.pc;
    cp "/usr/local/lib64/libjsoncpp.so.1.8.4" "$pkgdir"/usr/local/lib64/libjsoncpp.so.1.8.4;
    cp "/usr/local/lib64/libjsoncpp.so.19" "$pkgdir"/usr/local/lib64/libjsoncpp.so.19;
    cp "/usr/local/lib64/libjsoncpp.so" "$pkgdir"/usr/local/lib64/libjsoncpp.so;
    cp "/usr/local/include/json/allocator.h" "$pkgdir"/usr/local/include/json/allocator.h;
    cp "/usr/local/include/json/assertions.h" "$pkgdir"/usr/local/include/json/assertions.h;
    cp "/usr/local/include/json/autolink.h" "$pkgdir"/usr/local/include/json/autolink.h;
    cp "/usr/local/include/json/config.h" "$pkgdir"/usr/local/include/json/config.h;
    cp "/usr/local/include/json/features.h" "$pkgdir"/usr/local/include/json/features.h;
    cp "/usr/local/include/json/forwards.h" "$pkgdir"/usr/local/include/json/forwards.h;
    cp "/usr/local/include/json/json.h" "$pkgdir"/usr/local/include/json/json.h;
    cp "/usr/local/include/json/reader.h" "$pkgdir"/usr/local/include/json/reader.h;
    cp "/usr/local/include/json/value.h" "$pkgdir"/usr/local/include/json/value.h;
    cp "/usr/local/include/json/version.h" "$pkgdir"/usr/local/include/json/version.h;
    cp "/usr/local/include/json/writer.h" "$pkgdir"/usr/local/include/json/writer.h;
    sudo cp -Rf /usr/local/include/fastcgi++ "$pkgdir""/usr/local/include/fastcgi++";
    sudo cp -Rf "$builddir" "$pkgdir"/etc/accore;
}
