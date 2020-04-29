
Debian
====================
This directory contains files used to package cryptocaused/cryptocause-qt
for Debian-based Linux systems. If you compile cryptocaused/cryptocause-qt yourself, there are some useful files here.

## cryptocause: URI support ##


cryptocause-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install cryptocause-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your cryptocause-qt binary to `/usr/bin`
and the `../../share/pixmaps/cryptocause128.png` to `/usr/share/pixmaps`

cryptocause-qt.protocol (KDE)

