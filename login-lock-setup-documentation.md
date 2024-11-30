# Startup screen lock setup

This file documents how the screen lock is set up with `swaylock` on this machine
This works by lauching sway with swaylock as the start script, resulting in the
screen being locked after boot and the password being required.

The current problem is that I don't know from where that script is being
launched and sometimes after reboot the screen is not locked which is quite
annoying and dangerous.

The config controlling this currently lives under:
```
/etc/greetd
```
Because the login manager that is currently in use is `greetd`. The way this works
is that all `greetd` does is it launches sway with the config specified
in the file `/etc/greetd/sway-config`. This is supposed to launch `swaylock`
and then source the sway configuration from `/home/szymon/.config/sway`

Currently the problem is that something goes wrong and the screen is already
unclocked after boot which is unacceptable. As of 11/30/2024 I'm currently
not able to reproduce this issue so this docuent should be used to debug the
issue should this happen again.
