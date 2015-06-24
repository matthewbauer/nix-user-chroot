Run nix as user in a lightweight chrooted container.

```
$ mkdir $ROOT
$ nix-user-chroot $ROOT bash
$ download and extract latest nix binary tarball
$ mkdir -m 0755 /nix && chown $(whoami) /nix
$ mkdir -p /nix/var/nix/profiles/per-user/luca
$ nix-*-linux/install
```

You are in a user chroot where `/` is owned by your user, hence also `/nix` is owned by your user. Everything else is bind mounted from the real root.
