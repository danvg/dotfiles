# Arch install guide

## Load a key map

ls /usr/share/kbd/keymaps/**/*.map.gz  
loadkeys sv-latin1

## Verify boot mode

ls /sys/firmware/efi/efivars

## Update system clock

timedatectl set-ntp true
timedatectl status

## Create partition table

fdisk --list --color  
fdisk /dev/sda

## Format partitions

mkfs.fat -F32 /dev/sda1  
mkfs.ext4 /dev/sda2  
mkfs.ext4 /dev/sda3

## Mount partitions

mount /dev/sda2 /mnt

mkdir /mnt/boot  
mkdir /mnt/boot/efi  
mount /dev/sda1 /mnt/boot/efi

mkdir /mnt/home  
mount /dev/sda3 /mnt/home

## Setup mirrors

pacman -Syy  
pacman -S reflector  
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak  
reflector -c "sweden" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist

## Install essential packages

pacstrap /mnt base base-devel linux linux-firmware linux-headers\  
   amd-ucode nvidia dhcpcd networkmanager neovim man-db man-pages

## Generate fstab for mounted partitions

genfstab -U /mnt >> /mnt/etc/fstab

## change root into the system

arch-chroot /mnt

## Set timezone

ln -sf /usr/share/zoneinfo/Europe/Stockholm /etc/localtime  
hwclock --systohc

## Configure localization

nvim /etc/locale.gen  
uncomment the locales to include  
locale-gen

echo "LANG=en_US.UTF-8" >> /etc/locale.conf  
export LANG=en_US.UTF-8

echo "KEYMAP=sv-latin1" >> /etc/vconsole.conf

## Configure network

echo "arch-desktop" >> /etc/hostname

nvim /etc/hosts  
127.0.0.1   localhost  
::1         localhost  
127.0.1.1   arch-desktop.localdomain   arch-desktop

## Set root password

passwd

## Setup a boot loader

pacman -S grub efibootmgr  
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB  
grub-mkconfig -o /boot/grub/grub.cfg

## Install xserver

pacman -S xorg xorg-server xclip xsel

## Install a DE or WM

pacman -S plasma sddm sudo konsole fish  
systemctl enable sddm

## Create a user

EDITOR=nvim & visudo  
%wheel ALL=(ALL) ALL

useradd -m -G wheel -s /bin/fish dan  
passwd dan

## Exit and reboot

exit  
umount /mnt/boot/efi
umount /mnt/home
umount /mnt
reboot

## Keyring initialization

systemctl enable dhcpcd
systemctl start dhcpcd

pacman-key --init
pacman-key --populate archlinux
pacman -Syyu

## If all its working install additional software

pacman -S --needed ttf-dejavu ttf-liberation noto-fonts noto-emoji\  
   git openssh gcc gcc-ada clang cmake make python-pip tmux\  
   chromium thunderbird speedcrunch pgadmin4 dia konsole\  
   libreoffice-fresh htop mpv mpd ncmpcpp filelight

