# libinput-force-middle-click-emulation

Force libinput to emulate a middle click when pressing left and right buttons
simultaneously.  This allows GNOME Wayland (and other Wayland compositors that
do not expose libinput configuration) to configure the existing libinput
functionality.

## Installation

Build `hook.so` then configure `libinput` to `LD_PRELOAD` it:

```bash
make
echo 'export LD_PRELOAD="$LD_PRELOAD /path/to/hook.so"' | sudo tee -a /etc/profile.d/libinput.sh
```

Log out and log in to enable.

## References

* [GNOME mutter issue](https://gitlab.gnome.org/GNOME/mutter/issues/238)
* [libinput documentation](https://wayland.freedesktop.org/libinput/doc/latest/middle-button-emulation.html)
* Inspired by [scroll-emulation](https://github.com/PeterCxy/scroll-emulation)

## License

* MIT
