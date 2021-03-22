# Study NVidia

## 1. Install Nvidia driver
```sh
# Check NVidia card
$ sudo lshw -c display

# Check available Nvidia driver
$ sudo ubuntu-drivers devices

# Install recommended Nvidia driver
$ sudo apt install nvidia-driver-[version number]
(or $ sudo ubuntu-drivers autoinstall)

# reboot
$ sudo reboot

# Check Nvidia driver used for NVidia card
$ sudo lshw -c display

# Check which card is being used now
$ prime-select query

# Switch between Nvidia / Intel cards
$ sudo prime-select nvidia
$ sudo prime-select intel
```

## 2. Install Rocker
- Rocker is Nvidia + Docker for ROS
- Install
```sh
# 1. Check your PC has an NVidia card

# 2. Check your PC has an NVidia driver

# 3. Install NVidia-Docker
$ distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
$ sudo apt-get update
$ sudo apt-get install -y nvidia-docker2
$ sudo systemctl restart docker

# 4. Install Rocker
$ sudo apt-get install python3-rocker
```

## 3. Reference
- https://www.linuxbabe.com/ubuntu/install-nvidia-driver-ubuntu-18-04
- https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#setting-up-nvidia-container-toolkit
