# debian-devel
Docker based build environment for maintaining Debian packages

## Notes for WSL
WSL does not support fakeroot-syv, therefore in cowbuilder chroots, the alternative must be set to /usr/bin/fakeroot-tcp
