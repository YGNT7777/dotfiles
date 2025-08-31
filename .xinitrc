feh --bg-fill ~/Pictures/wp.jpg &
picom &
slstatus &
setxkbmap -layout us,gr -option 'grp:lwin_toggle'
xinput --set-prop 11 "libinput Accel Speed" -0.4
xinput --set-prop 11 "libinput Accel Profile Enabled" 0 1 0
exec dwm
