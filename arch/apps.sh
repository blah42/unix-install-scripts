useradd --create-home steven -g wheel
passwd steven
passwd 
echo Steven-Thinkpad-Yoga-14 > /etc/hostname
pacman -S --noconfirm dialog wpa_supplicant
pacman -S --noconfirm grub
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
pacman -Syu --noconfirm 
pacman -S --noconfirm i3-gaps lightdm xorg-server lightdm-gtk-greeter
systemctl enable lightdm.service
psswd
mkdir /home/steven/.config
cp ./config /home/steven/.config
mkdir /home/steven/github
cd /home/steven/github
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S --noconfirm steam proton cura thunderbird firefox texmaker atom uGet overGrive libreoffice dmenu bspwm Audacious wacom bspwm lutris polybar nitrogen wicd
mkdir ~/Documents
mkdir ~/Downloads
mkdir ~/Pictures
mkdir ~/Share
mkdir ~/Documents/Matlab
mkdir ~/Documents/Workcode
mkdir ~/Documents/scripts