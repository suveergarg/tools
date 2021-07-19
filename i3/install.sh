set -e

sudo apt install feh fonts-font-awesome rofi pulseaudio-utils xbacklight alsa-tools clipit gcc git terminator locate pcmanfm acpi libnotify-bin
sudo apt install i3 i3blocks i3status xautolock

mkdir ~/.config/i3
mkdir ~/.config/i3/bin

ln -s -f ~/tools/i3/config ~/.config/i3/config
ln -s -f ~/tools/i3/bin/logout ~/.config/i3/bin/logout
ln -s -f ~/tools/i3/bin/rofi_app_launcher ~/.config/i3/bin/rofi_app_launcher
ln -s -f ~/tools/i3/bin/rofifinder ~/.config/i3/bin/rofifinder
