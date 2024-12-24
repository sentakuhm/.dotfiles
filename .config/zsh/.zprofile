#if uwsm check may-start && uwsm select; then
#	exec systemd-cat -t uwsm_start uwsm start default
#fi
#
if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi
