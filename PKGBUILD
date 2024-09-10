#Maintainer: SDE Technologies <sdetechnologiesllc@gmail.com>
# srcdir=$(echo "$pwd")
# srcdir="/home/eliot/Projects/runarduinoarch"
pkgname="runarduinoarch"
pkgver="1.0.0"
epoch=
pkdesc="Tool that compiles and uploads arduino sketches on Arch Linux"
arch=("x86_64")
pkgrel=1
license=('unknown')
groups=()
depends=('kitty' 'minicom')
makedepends=()
checkdepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
# source=("$pkgname-$pkgver.tar.gz"
#         "$pkgname-$pkgver.patch")
source=(https://github.com/SDETechnologies/runarduinoarch/runarduinoarch-${pkgver}.tar.gz)
noextract=()
sha256sums=('c19223bca27c846844df337267f9dd10daf3a6cf332c784fb378ae4d4ff22531')
validpgpkeys=()

# srcdir="$pkgname-$pkgver"
# mkdir "$pkgname-$pkgver"
# tar -czf "$srcdir/$pkgname-$pkgver.tar.gz" ./
# patch -p1 -i "$pkgname-$pkgver.patch"

# prepare() {
#     # echo "Preparing"
#     # srcdir="$pkgname-$pkgver"
#     # make -j1 "$pkgname-$pkgver"
#     echo "$(pwd && ls -a)"
#     echo -e "cding into: $pkgname-$pkgver"
#     # mkdir -p "$pkgname-$pkgver"
# 	cd "$pkgname-$pkgver"
#     echo "after cd: " && "$(pwd && ls -a)"
#     # tar -f "$pkgname-$pkgver.tar.gz"
# 	# patch -p1 -i "$pkgname-$pkgver.patch"
#     # tar -czf "$pkgname-$pkgver.tar.gz" "$srcdir/."
# 	# patch -p1 -i "$srcdir/$pkgname-$pkgver.patch"
#     
# }

build() {
    echo "build()"
	# cd "$pkgname-$pkgver"
    
    # pkgdir="/usr"
    # echo "pkgdir: $pkgdir"
	# ./configure \
 #        --prefix=/usr \
 #        --sysconfdir=/etc \
 #        sbindir=/usr/bin
	#
    # zstd "$pkgname-$pkgver.pkg.tar.zst" "$srcdir/."
    echo "srcdir: $srcdir"
    # make "$srcdir/"
    # ./configure --prefix=/usr
    # "$srcdir/configure.sh" --prefix=/usr
    echo "in dir: $(pwd). contents: $(ls -a)"
    # alias configure="./configure.sh"
    ./configure.sh "/usr/bin"
    # ./configure.sh --prefix="/usr/bin"
    make
	# make -j1 "$srcdir/$pkgname-$pkgver/" install "$pkgname-$pkgver"
}

# check() {
# 	cd "$pkgname-$pkgver"
# 	make check
# }

package() {
	cd "$pkgname-$pkgver"
 #    # make -j1 DESTDIR="${pkgdir}/" install
 #    # pkgdir="/usr/bin/"
 #    echo "pkgdir: $pkgdir"
 #    make DESTDIR="$pkgdir" install-pkg 
	# # make DESTDIR="${pkgdir}/" install "pkg-$pkgver"
 #    cd $srcdir && echo "cd'd into $srcdir"
 #    echo "Contents of $srcdir: "
 #    echo "$(ls -a)"
 # cd "$srcdir" && echo "cd'd into $srcdir"
 destdir="$pkgdir/usr/bin/"
 # cp -R "$srcdir/" "$destdir"
 # make "$srcdir/" "$destdir"
 make DESTDIR="$pkgdir" install-pkg
 cd "$DESTDIR" && echo "cd'd into destdir: $DESTDIR"

}

