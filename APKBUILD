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
install=""
subpackages=""
replaces=""
source="http://10.84.172.118/atlas/us/-/archive/master/us-master.tar.gz"
builddir="$srcdir/us-master"

build() {
    mv /home/builder/cryptos/src/src/us-master /home/builder/cryptos/src/src/us;
    cd /home/builder/cryptos/src/src/us;
    sudo ./bin/install_fcgi;
    sudo ./bin/install_jsoncpp;
    sudo ./bin/install_libsecp256k1;
    make cryptos-debug;
}

package() {
    echo $srcdir;
}
