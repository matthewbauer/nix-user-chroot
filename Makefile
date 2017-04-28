NIX_PATH ?= "nixpkgs=https://github.com/NixOS/nixpkgs/archive/master.tar.gz"
NIX_SSL_CERT_FILE ?= "/etc/ssl/certs/ca-bundle.crt"

nix-user-chroot: main.c
	cc -o nix-user-chroot -DNIX_PATH='$(NIX_PATH)' -DNIX_SSL_CERT_FILE='$(NIX_SSL_CERT_FILE)' main.c
