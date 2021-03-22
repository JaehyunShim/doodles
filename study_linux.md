# Study Linux

## 1. Directory Structure
```sh
/           # Root directory of the entire file system hierarchy
/bin        # Essential command binaries
/boot       # Boot loader files
/dev        # Device files
/etc        # Configuration files
/home       # User's home directories
/lib        # Libraries essential for the binaries (/bin)
/opt        # Optional application software packages
/root       # Home directory for the root user
/tmp        # Temporary files
/usr        # User utilities and applications
/var        # Variable files (logs, temporary emails)
```

## 2. Terminal Commands
- Usage
```sh
$ echo      # Display line of text/string that are passed as an argument
$ pwd       # Print work directories
$ cd        # Change directories
$ ls        # List files and directories
$ clear     # Clear the terminal screen. cf) 'Ctrl' + 'L'.
$ man       # Display manual
$ mv        # Move files or directories
$ cp        # Copy files or directories
$ rm        # Remove ('-r' option for deleting recursively)
$ touch     # Create valid empty files
$ mkdir     # Make directories
$ rmdir     # Remove directories
$ cat       # Reads data from the file and gives their content as output
$ grep      # Search for a string of characters in a specified file
$ sudo su   # Switch user
$ sudo bash # Start a bash shell as a root level user. 'Ctrl' + 'D' to quit.
$ exit      # Exit
$ shutdown  # Shutdown computer
$ reboot    # Reboot computer
$ chmod     # Change access permissions
$ chown     # Change owner
$ which     # Search executable files
$ wget      # Download files from web
$ curl      # Client URL (?)
$ top       # Monitor currently running processes and the system resources
```
- Test
```sh
$ date
Thu 22 Oct 2020 03:16:44 PM KST
$ echo hello
hello
$ echo "Hello world"
Hello world
$ echo Hello\ world
Hello world
$ echo $PATH
/opt/ros/foxy/bin:/home/jaehyunshim/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
$ which echo
/usr/bin/echo
$ pwd
/home/jaehyunshim
$ cd /home
$ pwd
/home
$ cd ..
$ pwd
/
$ cd ./home
$ pwd
/home
$ ls
jaehyunshim
$ cd ~/Downloads
$ cd direcotry
$ cd -
/home/jaehyunshim/Downloads
$ ls -l
drwxr-xr-x 37 jaehyunshim jaehyunshim 4096 Oct 21 17:59 jaehyunshim
$ cd
$ mv abc.md cba.md
$ mv cba.md abc.md
$ mv abc.md cba.md
$ mkdir DirName
$ rmdir DirName
$ man ls
$ echo hello > hello.txt
$ cat hello.txt
hello
$ cat < hello.txt > hello2.txt
$ cat hello2.txt
hello
$ cat < hello.txt >> hello2.txt
$ cat hello2.txt
hello
hello
$ grep "hello" ./*
$ ls -l | tail -n1
drwxr-xr-x 2 jaehyunshim jaehyunshim 4096 Oct  6 16:45 Videos
$ ls -l | tail -n1 > ls.txt
$ cat ls.txt
drwxr-xr-x 2 jaehyunshim jaehyunshim 4096 Oct  6 16:45 Videos
$ cd /sys/class/backlight/intel_backligh
$ echo 500 > brightness
bash: brightness: Permission denied
$ sudo su
$ echo 500 > brightness
$ exit
$ echo 1060 | sudo tee brightness
```

## 3. Reference
- [Filesystem Hierarchy Standard](https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard#cite_note-1)
- [Linux Directory Structure](https://webdir.tistory.com/101)
- [50 Most Useful Linux Commands](https://www.ubuntupit.com/the-50-best-linux-commands-to-run-in-the-terminal/)
- [Lecture 1: Course Overview + The Shell (2020)](https://www.youtube.com/watch?v=Z56Jmr9Z34Q)
