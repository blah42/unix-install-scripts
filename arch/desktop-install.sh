cfdisk /dev/sda
cfdisk /dev/sdb
mkfs.ext4 /dev/sdb2
swapon /dev/sdb1
mkdir /mnt/home
mkdir /mnt/usr
mount /dev/sdb2 /mnt
mount /dev/sda2 /mnt/home
mount /dev/sda1 /mnt/usr
pacstrap /mnt base base-devel
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
adduser steven
passwd steven
echo steven-PC > /etc/hostname
pacman -S --noconfirm dialog wpa_supplicant
pacman -S --noconfirm grub
grub-install /dev/sdb
grub-mkconfig -o /boot/grub/grub.cfg
pacman -Syu --noconfirm
pacman -S --noconfirm i3-gaps lightdm xorg-server lightdm-gtk-greeter
systemctl enable lightdm.service
psswd
