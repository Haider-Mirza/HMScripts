# Maintainer: Haider Mirza <x7and7@gmail.com>
pkgname=HMScripts
_pkgname=HMScripts
pkgver=1.0
pkgrel=1
pkgdesc="A collection of scripts"
arch=('any')
url="https://github.com/Haider-Mirza/HMScripts"
license=('GPL3')
depends=(dmenu)
groups=()
makedepends=(pandoc git)
checkdepends=()
optdepends=(
  'emacs'
  'libnotify'
  'dunst'
  'ffmpeg'
  )
provides=(HMScripts)
conflicts=()
replaces=()
backup=()
options=()
source=("git+$url")
noextract=()
md5sums=('SKIP')
validpgpkeys=()

build() {
echo "Thank you for installing"
}

package() {
  cd ${_pkgname}
  cd ..
  cd ..
  cp -rf Scripts/* ~/.local/bin
}


