sudo pacman -Syu
sudo pacman -S pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber
systemctl --user enable --now pipewire.service pipewire-pulse.service 
sudo pacman -S xf86-video-intel
sudo pacman -S xorg-server xorg-xinit xorg-xbacklight
sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings 
systemctl enable lightdm.service 
sudo pacman -S i3-wm rofi i3lock polybar lxappearance arc-solid-gtk-theme arc-icon-theme xfce4-terminal thunar acpi feh shutter blueman android-file-transfer gvfs-mtp ufw gufw
systemctl enable bluetooth.service
systemctl enable --now ufw.service
sudo ufw enable
mkdir git
cd git/
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin/
makepkg -i
yay -S timeshift
reboot
