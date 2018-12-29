wifi-menu
fdisk /dev/sda
mkfs.ext4 /dev/sda2
swapon /dev/sda1
mount /dev/sda1 /mnt
mkdir /mnt/home
pacstrap /mnt base base-devel
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
echo Steven-ThinkpadYoga14 > /etc/hostname
pacman -S --noconfirm dialog wpa_supplicant
pacman -S --noconfirm grub
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
pacman -Syu --noconfirm 
pacman -S --noconfirm i3-gaps lightdm xorg-server lightdm-gtk-greeter
systemctl enable lightdm.service
psswd