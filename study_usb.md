# Study USB (Crappy)

## 1. Permission
- Usage
```sh
# Enable USB ?? Add the user to the group 'dialout'
$ sudo usermod -aG dialout <your_account_id>
# If you want to add the current user
$ sudo usermod -aG dialout $USER

# Or add the below in the /etc/udev/rules.d/***.rules files
KERNEL=="ttyUSB*", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60", MODE:="0666", GROUP:="dialout",

# Reset udev rules. Below or method #2 ??
$ service udev reload
$ sleep 2
$ service udev restart
```
## 2. Latency
- Usage
```sh
# Check latency time
$ cat /sys/bus/usb-serial/devices/ttyUSB*/latency_timer

# Set latency time
$ nano /etc/udev/rules.d/***-latency-timer.rules

# example ??
KERNEL=="ttyUSB*", DRIVERS=="ftdi_sio", MODE="0666", ATTR{device/latency_timer}="1"
ACTION=="add", SUBSYSTEM=="usb-serial", DRIVER=="ftdi_sio", ATTR{latency_timer}="1"

# Reset udev rules. Below or method #1 ??
$ sudo udevadm control --reload-rules
$ sudo udevadm trigger
```
