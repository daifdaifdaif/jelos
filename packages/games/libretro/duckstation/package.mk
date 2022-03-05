# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2021-present Fewtarius (https://github.com/fewtarius)
# Maintenance 2022-present BrooksyTech (https://github.com/brooksytech)

PKG_NAME="duckstation"
PKG_VERSION="fa005db2e6c997afe8fc3af8de94953247232c2d"
PKG_ARCH="aarch64"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/brooksytech/duckstation-libretro"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="libretro"
PKG_SHORTDESC="DuckStation - PlayStation 1, aka. PSX Emulator"
PKG_TOOLCHAIN="cmake"
PKG_BUILD_FLAGS="-lto"

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib/libretro
  cp $PKG_BUILD/.$TARGET_NAME/duckstation_libretro.so $INSTALL/usr/lib/libretro/
}