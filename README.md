# Nix on Chrome OS

## Install

[Download Nix](https://nixos.org/nix/download.html) Linux bootstrap binary
tarball.

```sh
$ sudo tar -C /usr/local/nixroot --transform='s|^nix-[^/]*|nix|' -xf ~/Downloads/nix-1.8-x86_64-linux.tar.bz2
```

Follow the usage instructions to get into the chroot then run the install:

```sh
$ /nix/install
```

Exit and re-enter the chroot to have Nix tools available.

## Usage

Run the chroot initialisation after every boot:

```sh
$ sudo sh ~/Downloads/nix-chromeos/nix-mount.sh
```

Enter the chroot:

```sh
$ sudo sh ~/Downloads/nix-chromeos/nix-chroot.sh
```
