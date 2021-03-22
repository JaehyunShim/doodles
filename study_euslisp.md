# Study EusLisp

## 1. EusLisp
- Interpreter language (do not need compilers)
- Usage
  ```sh
  # Install ROS, HRPSYS, EusLisp
  $ sudo apt-get install ros-$ROS_DISTRO-roseus
  $ sudo apt-get install ros-$ROS_DISTRO-hrpsys-ros-bridge
  $ sudo apt-get install ros-$ROS_DISTRO-euscollada
  # $ sudo apt-get install ros-$ROS_VERSION-pr2eus
  $ sudo apt-get install ros-$ROS_DISTRO-jsk-common
  ```

## 2. EusLisp Interpreter
- Usage
  ```sh
  # Start interpreter
  $ eusgl    # minimal usage
  $ irteusgl # launch with irteus expansion + GUI
  $ roseus   # launch with irteusgl + ROS interface

  # Exit interpreter
  - 'Ctrl' + 'z'
  ```

## 3. Reference
- [euslisp tutorial](https://euslisp-tutorial.readthedocs.io/en/latest/)
- [jsk euslisp](https://github.com/euslisp/jskeus)
- [euslisp manual](http://euslisp.github.io/EusLisp/manual.html)
- [euslisp reference manual](https://euslisp.readthedocs.io/en/latest/manual.html)
- [jsk_pr2eus](https://github.com/jsk-ros-pkg/jsk_pr2eus/tree/master/pr2eus_tutorials)
- [ros wiki roseus tutorial](http://wiki.ros.org/roseus/Tutorials)
