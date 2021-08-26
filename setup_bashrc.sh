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

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1='\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ '
"
