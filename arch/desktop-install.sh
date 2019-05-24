cfdisk /dev/sda
cfdisk /dev/sdb
mkfs.ext4 /dev/sdb2
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda2
swapon /dev/sdb1
mkdir /mnt/home
mkdir /mnt/usr
mount /dev/sdb2 /mnt
pacstrap /mnt base base-devel
mount /dev/sda2 /mnt/home
mount /dev/sda1 /mnt/usr
pacstrap /mnt base base-devel
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
