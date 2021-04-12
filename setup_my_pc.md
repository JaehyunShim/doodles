# Setup My PC

## Install Ubuntu
- Install Ubuntu 20.04
- Setup Ubuntu keyboard shortcut
```sh
Close window: Ctrl + Q
Maximize window: Ctrl + Super + Up
Restore window: Ctrl + Super + Down
View split on left: Ctrl + Super + Left
View split on right: Ctrl + Super + Right
```
- Setup Ubuntu languages (Korean)
```sh
1) Settings -> Region & Language -> Manage Installed Languages -> Install Korean
2) Log out and log back in -> Input Sources (+, Korean, Korean Hangul) -> Korean Setup -> Start in Hangul mode -> Apply
3) Switching languages: Super+Space
```

Now you can follow the below instruction to manually install necessary applications or auto-install them by using [dotfiles](https://github.com/JaehyunShim/dotfiles)

## Install Applications
- Install necessary applications
  - [Chrome](https://www.google.co.kr/chrome/?brand=FKPE&gclid=Cj0KCQiA7NKBBhDBARIsAHbXCB5FTZusIZOT27Or_3PJhGEZ65rdJKxELDIZiVacFD6tDq73F78VA1kaApZvEALw_wcB&gclsrc=aw.ds)
  - [Visual Studio Code](https://code.visualstudio.com)
  ```sh
  # Settings at ~/.config/Code/User/settings.json
  {
    "editor.tabSize": 2,
    "editor.rulers": [100],
    "editor.minimap.enabled": false,
    "editor.mouseWheelZoom": true,
    "editor.renderWhitespace": "all",
    "terminal.integrated.scrollback": 100000,
    "files.insertFinalNewline": true
  }

  # Install Extensions
  C/C++, Python, CMake, XML, YAML, Trailing Whitespace, EOF Mark, Git Graph, HTML Preview
  , vscode-pdf, Remote - Containers, Remote - SSH
  ```
  - Terminator
  ```sh
  # Install
  $ sudo apt install -y terminator

  # Configure Shortcut Settings at ~/.config/terminator/config
  [keybindings]
  new_tab = <Primary>t
  go_up = <Primary>Up
  go_down = <Primary>Down
  go_left = <Primary>Left
  go_right = <Primary>Right
  split_horiz = <Primary><Shift>l
  split_vert = <Primary><Shift>k
  close_term = <Primary>w
  close_window = <Primary>q
  switch_to_tab_1 = <Primary>1
  switch_to_tab_2 = <Primary>2
  switch_to_tab_3 = <Primary>3
  switch_to_tab_4 = <Primary>4
  switch_to_tab_5 = <Primary>5
  switch_to_tab_6 = <Primary>6
  switch_to_tab_7 = <Primary>7
  switch_to_tab_8 = <Primary>8
  switch_to_tab_9 = <Primary>9
  switch_to_tab_10 = <Primary>0
  new_window = <Primary>n

  # Setup Additionals
  Preference -> Profiles -> Scrolling -> Infinite Scrollback
  ```
- Install ROS
  - [instruction](https://github.com/JaehyunShim/doodles/blob/master/study_ros.md)
- Install Git
  - [instruction](https://github.com/JaehyunShim/doodles/blob/master/study_git.md)
- Install Remote PC Control tools if needed
  - [instruction](https://github.com/JaehyunShim/doodles/blob/master/study_remote_pc_control.md)
- Install the following addtional applications if needed
  - [Qt Creator](https://ros-qtc-plugin.readthedocs.io/en/latest/_source/How-to-Install-Users.html)
  - [GitEye](https://www.collab.net/downloads/giteye#show-Linux)
  - meshlab
  - [Meld Diff Viewer](https://meldmerge.org)
  - [GIMP Image Editor](https://www.gimp.org)
  - [kdenlive](https://kdenlive.org/en/download)
  - Recordmydesktop , Simplescreenrecorder
  - kolourpaint (by $ sudo apt install kolourpaint)

## Troubleshooting
- Nvidia driver & Ubuntu freezing issue: press 'e' and add 'nomodeset' at the end
- If there is no enough RAM, create a swapfile following this [instruction](https://itsfoss.com/create-swap-file-linux/)
