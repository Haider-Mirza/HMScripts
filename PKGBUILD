# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Haider Mirza <x7and7@gmail.com>
pkgname=HMScripts
pkgver=1.0
pkgrel=1
epoch=
pkgdesc="These are custom Scripts I have programmed to Automate some processes."
arch=('any')
url="https://github.com/Haider-Mirza/HMScripts"
license=('GPL3')
groups=()
depends=(dmenu ffmpeg)
makedepends=(git dmenu)
checkdepends=()
optdepends=(
  'Emacs'
  'libnotify'
  'dunst'
  'ffmpeg'
)
provides=(HMScripts)
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=("$pkgname-$pkgver.tar.gz"
        "$pkgname-$pkgver.patch")
noextract=()
md5sums=('SKIP')
validpgpkeys=()

pkgver() {
  cd "Scripts"
  printf "1.0.r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

build() {
  cd "Scripts"
  DESTDIR="$pkgdir/" make clean build
}

package() {
  cd Scripts/
  cp -rf * ~/.local/bin
}

