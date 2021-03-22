# Study Remote PC Control

## 1. Static IP Adress
- Setup
```sh
1. Setup location: Settings -> Wi-Fi -> Settings Button -> IPv4 -> Manual
2. Addresses
Address: ?.?.!.! (?.? are network part, !.! are host part that you want to set)
Netmask: 255.255.255.0
Gateway: ?.?.?.? (?.?.?.? is Default Route address)
3. DNS
Disable Automatic
?.?.?.? (?.?.?.? is Default Route address)
4. Apply -> Disconnect -> Reconnect

# To make it easy to connect to the Server PC without touching any HW interface, do below
1. Settings -> Users -> Enable Automatic Login
2. Settings -> Blank Screen -> Never
```

## 2. SSH Connect
- Usage
```sh
(Server PC)
$ sudo apt-get install openssh-server

(Client PC)
$ ssh ${username}@${host}
# ex) ssh jaehyun@192.168.0.100
```

## 3. Samba
- Usage
```sh
# Install
(Server PC)
$ sudo apt-get install -y samba
$ sudo smbpasswd -a username # ex) sudo smbpasswd -a robotis

# Configure
(Server PC)
# add below to /etc/samba/smb.conf
[root directory]
   comment = Root Directory
   path = /
   browseable = yes
   read only = no
   writable = yes
   create mask = 0755
   directory mask = 0755
   valid users = @username # ex) sudo smbpasswd -a robotis

(Server PC)
$ sudo service smbd restart

(Client PC)
# Open a direcotry
# Press 'Ctrl' + 'L'
# Type smb://ip_address
```

## 4. Vino (VNC Server)
- Usage
```sh
# Install
(Server PC)
$ sudo apt install vino
$ gsettings set org.gnome.Vino require-encryption false
$ gsettings set org.gnome.Vino prompt-enabled false

# Setup Autostart Settings at $HOME/.config/autostart/vino-server.desktop and restart
(Server PC)
$ nano ~/.config/autostart/vino-server.desktop

[Desktop Entry]
Type=Application
Exec=/usr/lib/vino/vino-server --sm-disable
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=Vino Server
Name=/usr/lib/vino/vino-server
Comment[en_US]=
Comment=

(Server PC)
$ reboot

# Connect to the server PC using Remmina using the IP address of the server PC
(Client PC)
$ remmina
```

## 5. Barrier
- Usage
```sh
# Defination of Client PC and Server PC is the opposite of ##2, ##3

# Install
(Client PC, Server PC)
$ sudo apt install barrier

# Setup Connection. If you do not understand this instruction, check out the link in the ##5
(Client PC)
1. Choose Client
2. Input Server IP # good to set it to a static IP so that you don't have to change it every time
3. Start

(Server PC)
1. Choose Server
2. Click 'Configure Server' and add a monitor with the same name as the Client PC
3. Start

# Setup Autostart Settings at $HOME/.config/autostart/barrier.desktop and restart
(Client PC)
$ nano ~/.config/autostart/barrier.desktop

[Desktop Entry]
Type=Application
Exec=/usr/bin/barrier
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=Barrier
Name=/usr/bin/barrier
Comment[en_US]=
Comment=

(Client PC)
$ reboot
```

## 6. NTP
- Usage
```sh
# Install
(Server PC)
$ sudo apt install ntp

# Setup
(Server PC)
$ sudo nano /etc/ntp.conf

# Then, enter servers into the NTP config file. Refer to the below
(Server PC)
https://quicknotepadtutorial.blogspot.com/2020/05/how-to-install-configure-ntp-server-and.html
$ sudo service ntp restart
$ sudo service ntp status

# When done with the Server PC
(Client PC)
$ sudo date --set='-2 secs'
$ sudo ntpdate 192.168.0.1 (server ip address)
$ sudo hwclock -w

# Check if synced correctly
(Server PC, Client PC)
$ sudo hwclock --show
```

## 7. SCP
- Usage
```sh
$ scp [option] [file_name] remote_username@remote_ip:/remote/directory
```

## 8. Automatic Power On
- [Usage](https://www.google.com/search?q=NUC+automatic+power+on+setting&oq=NUC+automatic++power+on+setting&aqs=chrome..69i57j0.7369j0j7&sourceid=chrome&ie=UTF-8)

## 9. Reference
- [How to use Barrier](https://www.youtube.com/watch?v=-G9IIauHOhA)
- [How to install configure ntp server and html](https://quicknotepadtutorial.blogspot.com/2020/05/how-to-install-configure-ntp-server-and.html)
