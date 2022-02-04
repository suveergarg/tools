echo "brightness(){
 xrandr --output eDP-1-1 --brightness $1
}

brightness_mon(){
 xrandr --output HDMI-0 --brightness $1
}

connect_monitor(){
 xrandr --output HDMI-0 --auto --right-of eDP-1-1
}

vol_up(){
 amixer -D pulse sset Master 10%+
}

vol_down(){
 amixer -D pulse sset Master 10%-
}

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\e[1m\e[32m\u@\h\e[0m\e[0m:\e[1m\e[34m\w\e[0m\e[1;33m\$(git_branch)\e[0m\$ "
