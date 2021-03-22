# Study Bloom

## 1. Usage
```sh
# If first release
$ bloom-release open_manipulator_p_simulations -t melodic -r melodic
# If update
$ bloom-release open_manipulator_p_simulations -t melodic -r melodic --edit

# Do below in turn
Release repository url [press enter to abort]: https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release.git
open_manipulator_p_simulations
https://github.com/ROBOTIS-GIT/open_manipulator_p_simulations.git
Upstream VCS Type: git
Version: [Enter]
Release Tag: [Enter]
Upstream devel branch: melodic-devel
ROS Distro: melodic
Patches Directory: [Enter]
Release Repository Push URL: [Enter]
VCS type: git
VCS url: https://github.com/ROBOTIS-GIT/open_manipulator_p_simulations.git
VCS version: melodic-devel
VCS type: git
VCS url: https://github.com/ROBOTIS-GIT/open_manipulator_p_simulations.git
VCS version: melodic-devel
Would you like to turn on pull request testing? [y/N]? n
Would you like to add a maintenance status for this repository? [Y/n]? y
Status: developed
Status Description [press Enter for no change]: [Enter]
```

## 2. Example
```sh
robotis@robotis-NUC8i7BEH:~$ bloom-release open_manipulator_p_simulations -t melodic -r melodic
ROS Distro index file associate with commit 'f8335c214e20d445756ba6479e69a050bbeb3094'
New ROS Distro index url: 'https://raw.githubusercontent.com/ros/rosdistro/f8335c214e20d445756ba6479e69a050bbeb3094/index-v4.yaml'
Specified repository 'open_manipulator_p_simulations' is not in the distribution file located at 'https://raw.githubusercontent.com/ros/rosdistro/f8335c214e20d445756ba6479e69a050bbeb3094/melodic/distribution.yaml'
Did you mean one of these: 'open_manipulator_simulations', 'open_manipulator_with_tb3_simulations', 'open_manipulator_msgs'?
Could not determine release repository url for repository 'open_manipulator_p_simulations' of distro 'melodic'
You can continue the release process by manually specifying the location of the RELEASE repository.
To be clear this is the url of the RELEASE repository not the upstream repository.
For release repositories on GitHub, you should provide the `https://` url which should end in `.git`.
Here is the url for a typical release repository on GitHub: https://github.com/ros-gbp/rviz-release.git
==> Looking for a release of this repository in a different distribution...
No reasonable default release repository url could be determined from previous releases.
Release repository url [press enter to abort]: https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release.git
==> Fetching 'open_manipulator_p_simulations' repository from 'https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release.git'
Cloning into '/tmp/tmpfT63WT'...
remote: Enumerating objects: 412, done.
remote: Counting objects: 100% (412/412), done.
remote: Compressing objects: 100% (265/265), done.
remote: Total 412 (delta 125), reused 386 (delta 99), pack-reused 0
Receiving objects: 100% (412/412), 46.41 KiB | 203.00 KiB/s, done.
Resolving deltas: 100% (125/125), done.
==> Testing for push permission on release repository
==> git remote -v
origin  https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release.git (fetch)
origin  https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release.git (push)
==> git push --dry-run
Username for 'https://github.com': JaehyunShim
Password for 'https://JaehyunShim@github.com':
Everything up-to-date
==> Releasing 'open_manipulator_p_simulations' using release track 'melodic'
==> git-bloom-release melodic
Processing release track settings for 'melodic'
Checking upstream devel branch 'melodic-devel' for package.xml(s)
Cloning into '/tmp/tmpZ8Qpoe/upstream'...
remote: Enumerating objects: 23, done.
remote: Counting objects: 100% (23/23), done.
remote: Compressing objects: 100% (17/17), done.
remote: Total 135 (delta 9), reused 14 (delta 6), pack-reused 112
Receiving objects: 100% (135/135), 22.50 KiB | 22.50 MiB/s, done.
Resolving deltas: 100% (66/66), done.
Looking for packages in 'melodic-devel' branch... found 2 packages.
Detected version '1.0.0' from package(s): ['open_manipulator_p_gazebo', 'open_manipulator_p_simulations']

Executing release track 'melodic'
==> bloom-export-upstream /tmp/tmpZ8Qpoe/upstream git --tag 1.0.0 --display-uri https://github.com/ROBOTIS-GIT/open_manipulator_p_simulations.git --name open_manipulator_p_simulations --output-dir /tmp/tmptR6uFn
Checking out repository at 'https://github.com/ROBOTIS-GIT/open_manipulator_p_simulations.git' to reference '1.0.0'.
Exporting to archive: '/tmp/tmptR6uFn/open_manipulator_p_simulations-1.0.0.tar.gz'
Cloning into '/tmp/tmpEZ7Goc'...
warning: --depth is ignored in local clones; use file:// instead.
done.
md5: 16fa38c59e175ef0a0be60fd9902ba9e

==> git-bloom-import-upstream /tmp/tmptR6uFn/open_manipulator_p_simulations-1.0.0.tar.gz  --release-version 1.0.0 --replace
The latest upstream tag in the release repository is 'upstream/1.0.0'.
Removing tag: 'upstream/1.0.0'
Importing archive into upstream branch...
Creating tag: 'upstream/1.0.0'
I'm happy.  You should be too.

==> git-bloom-generate -y rosrelease melodic --source upstream -i 2
Releasing packages: ['open_manipulator_p_gazebo', 'open_manipulator_p_simulations']
Releasing package 'open_manipulator_p_gazebo' for 'melodic' to: 'release/melodic/open_manipulator_p_gazebo'
Releasing package 'open_manipulator_p_simulations' for 'melodic' to: 'release/melodic/open_manipulator_p_simulations'

==> git-bloom-generate -y rosdebian --prefix release/melodic melodic -i 2 --os-name ubuntu
Generating source debs for the packages: ['open_manipulator_p_gazebo', 'open_manipulator_p_simulations']
Debian Incremental Version: 2
Debian Distributions: ['bionic']
Releasing for rosdistro: melodic

Pre-verifying Debian dependency keys...
Running 'rosdep update'...
All keys are OK

Placing debian template files into 'debian/melodic/open_manipulator_p_gazebo' branch.
==> Placing templates files in the 'debian' folder.

####
#### Generating 'bionic' debian for package 'open_manipulator_p_gazebo' at version '1.0.0-2'
####
Generating debian for bionic...
Package 'open-manipulator-p-gazebo' has dependencies:
Run Dependencies:
  rosdep key           => bionic key
  roscpp               => ['ros-melodic-roscpp']
  std_msgs             => ['ros-melodic-std-msgs']
  gazebo_ros           => ['ros-melodic-gazebo-ros']
  gazebo_ros_control   => ['ros-melodic-gazebo-ros-control']
  controller_manager   => ['ros-melodic-controller-manager']
  xacro                => ['ros-melodic-xacro']
  urdf                 => ['ros-melodic-urdf']
Build and Build Tool Dependencies:
  rosdep key           => bionic key
  roscpp               => ['ros-melodic-roscpp']
  std_msgs             => ['ros-melodic-std-msgs']
  gazebo_ros           => ['ros-melodic-gazebo-ros']
  gazebo_ros_control   => ['ros-melodic-gazebo-ros-control']
  controller_manager   => ['ros-melodic-controller-manager']
  xacro                => ['ros-melodic-xacro']
  urdf                 => ['ros-melodic-urdf']
  catkin               => ['ros-melodic-catkin']
ROS Distro index file associate with commit 'f8335c214e20d445756ba6479e69a050bbeb3094'
New ROS Distro index url: 'https://raw.githubusercontent.com/ros/rosdistro/f8335c214e20d445756ba6479e69a050bbeb3094/index-v4.yaml'
==> In place processing templates in 'debian' folder.
Expanding 'debian/gbp.conf.em' -> 'debian/gbp.conf'
Expanding 'debian/rules.em' -> 'debian/rules'
Expanding 'debian/source/options.em' -> 'debian/source/options'
Expanding 'debian/source/format.em' -> 'debian/source/format'
Expanding 'debian/control.em' -> 'debian/control'
Expanding 'debian/compat.em' -> 'debian/compat'
Expanding 'debian/copyright.em' -> 'debian/copyright'
Expanding 'debian/changelog.em' -> 'debian/changelog'
Creating tag: debian/ros-melodic-open-manipulator-p-gazebo_1.0.0-2_bionic
####
#### Successfully generated 'bionic' debian for package 'open_manipulator_p_gazebo' at version '1.0.0-2'
####

Placing debian template files into 'debian/melodic/open_manipulator_p_simulations' branch.
==> Placing templates files in the 'debian' folder.

####
#### Generating 'bionic' debian for package 'open_manipulator_p_simulations' at version '1.0.0-2'
####
Generating debian for bionic...
Package 'open-manipulator-p-simulations' has dependencies:
Run Dependencies:
  rosdep key           => bionic key
  open_manipulator_p_gazebo => ['ros-melodic-open-manipulator-p-gazebo']
Build and Build Tool Dependencies:
  rosdep key           => bionic key
  catkin               => ['ros-melodic-catkin']
==> In place processing templates in 'debian' folder.
Expanding 'debian/gbp.conf.em' -> 'debian/gbp.conf'
Expanding 'debian/rules.em' -> 'debian/rules'
Expanding 'debian/source/options.em' -> 'debian/source/options'
Expanding 'debian/source/format.em' -> 'debian/source/format'
Expanding 'debian/control.em' -> 'debian/control'
Expanding 'debian/compat.em' -> 'debian/compat'
Expanding 'debian/copyright.em' -> 'debian/copyright'
Expanding 'debian/changelog.em' -> 'debian/changelog'
Creating tag: debian/ros-melodic-open-manipulator-p-simulations_1.0.0-2_bionic
####
#### Successfully generated 'bionic' debian for package 'open_manipulator_p_simulations' at version '1.0.0-2'
####


==> git-bloom-generate -y rosdebian --prefix release/melodic melodic -i 2 --os-name debian --os-not-required
Generating source debs for the packages: ['open_manipulator_p_gazebo', 'open_manipulator_p_simulations']
Debian Incremental Version: 2
Debian Distributions: ['stretch']
Releasing for rosdistro: melodic

Pre-verifying Debian dependency keys...
Running 'rosdep update'...
All keys are OK

Placing debian template files into 'debian/melodic/open_manipulator_p_gazebo' branch.
==> Placing templates files in the 'debian' folder.

####
#### Generating 'stretch' debian for package 'open_manipulator_p_gazebo' at version '1.0.0-2'
####
Generating debian for stretch...
Package 'open-manipulator-p-gazebo' has dependencies:
Run Dependencies:
  rosdep key           => stretch key
  roscpp               => ['ros-melodic-roscpp']
  std_msgs             => ['ros-melodic-std-msgs']
  gazebo_ros           => ['ros-melodic-gazebo-ros']
  gazebo_ros_control   => ['ros-melodic-gazebo-ros-control']
  controller_manager   => ['ros-melodic-controller-manager']
  xacro                => ['ros-melodic-xacro']
  urdf                 => ['ros-melodic-urdf']
Build and Build Tool Dependencies:
  rosdep key           => stretch key
  roscpp               => ['ros-melodic-roscpp']
  std_msgs             => ['ros-melodic-std-msgs']
  gazebo_ros           => ['ros-melodic-gazebo-ros']
  gazebo_ros_control   => ['ros-melodic-gazebo-ros-control']
  controller_manager   => ['ros-melodic-controller-manager']
  xacro                => ['ros-melodic-xacro']
  urdf                 => ['ros-melodic-urdf']
  catkin               => ['ros-melodic-catkin']
ROS Distro index file associate with commit 'f8335c214e20d445756ba6479e69a050bbeb3094'
New ROS Distro index url: 'https://raw.githubusercontent.com/ros/rosdistro/f8335c214e20d445756ba6479e69a050bbeb3094/index-v4.yaml'
==> In place processing templates in 'debian' folder.
Expanding 'debian/gbp.conf.em' -> 'debian/gbp.conf'
Expanding 'debian/rules.em' -> 'debian/rules'
Expanding 'debian/source/options.em' -> 'debian/source/options'
Expanding 'debian/source/format.em' -> 'debian/source/format'
Expanding 'debian/control.em' -> 'debian/control'
Expanding 'debian/compat.em' -> 'debian/compat'
Expanding 'debian/copyright.em' -> 'debian/copyright'
Expanding 'debian/changelog.em' -> 'debian/changelog'
Creating tag: debian/ros-melodic-open-manipulator-p-gazebo_1.0.0-2_stretch
####
#### Successfully generated 'stretch' debian for package 'open_manipulator_p_gazebo' at version '1.0.0-2'
####

Placing debian template files into 'debian/melodic/open_manipulator_p_simulations' branch.
==> Placing templates files in the 'debian' folder.

####
#### Generating 'stretch' debian for package 'open_manipulator_p_simulations' at version '1.0.0-2'
####
Generating debian for stretch...
Package 'open-manipulator-p-simulations' has dependencies:
Run Dependencies:
  rosdep key           => stretch key
  open_manipulator_p_gazebo => ['ros-melodic-open-manipulator-p-gazebo']
Build and Build Tool Dependencies:
  rosdep key           => stretch key
  catkin               => ['ros-melodic-catkin']
==> In place processing templates in 'debian' folder.
Expanding 'debian/gbp.conf.em' -> 'debian/gbp.conf'
Expanding 'debian/rules.em' -> 'debian/rules'
Expanding 'debian/source/options.em' -> 'debian/source/options'
Expanding 'debian/source/format.em' -> 'debian/source/format'
Expanding 'debian/control.em' -> 'debian/control'
Expanding 'debian/compat.em' -> 'debian/compat'
Expanding 'debian/copyright.em' -> 'debian/copyright'
Expanding 'debian/changelog.em' -> 'debian/changelog'
Creating tag: debian/ros-melodic-open-manipulator-p-simulations_1.0.0-2_stretch
####
#### Successfully generated 'stretch' debian for package 'open_manipulator_p_simulations' at version '1.0.0-2'
####


==> git-bloom-generate -y rosrpm --prefix release/melodic melodic -i 2 --os-name fedora
No platforms defined for os 'fedora' in release file for the 'melodic' distro.
Not performing RPM generation.

==> git-bloom-generate -y rosrpm --prefix release/melodic melodic -i 2 --os-name rhel
No platforms defined for os 'rhel' in release file for the 'melodic' distro.
Not performing RPM generation.




Tip: Check to ensure that the debian tags created have the same version as the upstream version you are releasing.
Everything went as expected, you should check that the new tags match your expectations, and then push to the release repo with:
  git push --all && git push --tags  # You might have to add --force to the second command if you are over-writing existing tags
<== Released 'open_manipulator_p_simulations' using release track 'melodic' successfully
==> git remote -v
origin  https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release.git (fetch)
origin  https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release.git (push)
Releasing complete, push to release repository?
Continue [Y/n]? y
==> Pushing changes to release repository for 'open_manipulator_p_simulations'
==> git push --all
Username for 'https://github.com': JaehyunShim
Password for 'https://JaehyunShim@github.com':
Counting objects: 156, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (143/143), done.
Writing objects: 100% (156/156), 18.03 KiB | 3.61 MiB/s, done.
Total 156 (delta 49), reused 13 (delta 6)
remote: Resolving deltas: 100% (49/49), completed with 13 local objects.
To https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release.git
   b2eb31f..fc93628  debian/melodic/bionic/open_manipulator_p_gazebo -> debian/melodic/bionic/open_manipulator_p_gazebo
   61bfde8..5b9a5f6  debian/melodic/bionic/open_manipulator_p_simulations -> debian/melodic/bionic/open_manipulator_p_simulations
   ee5db47..640e0d7  debian/melodic/open_manipulator_p_gazebo -> debian/melodic/open_manipulator_p_gazebo
   b24ab74..8636a91  debian/melodic/open_manipulator_p_simulations -> debian/melodic/open_manipulator_p_simulations
   dd4c94d..5d214fc  debian/melodic/stretch/open_manipulator_p_gazebo -> debian/melodic/stretch/open_manipulator_p_gazebo
   3e24a24..2584db5  debian/melodic/stretch/open_manipulator_p_simulations -> debian/melodic/stretch/open_manipulator_p_simulations
   7a6b4a6..84de4e8  master -> master
   7ea452b..b4e317a  patches/debian/melodic/bionic/open_manipulator_p_gazebo -> patches/debian/melodic/bionic/open_manipulator_p_gazebo
   3cd0169..600f326  patches/debian/melodic/bionic/open_manipulator_p_simulations -> patches/debian/melodic/bionic/open_manipulator_p_simulations
   f550f98..dc751b0  patches/debian/melodic/open_manipulator_p_gazebo -> patches/debian/melodic/open_manipulator_p_gazebo
   118c566..b16602c  patches/debian/melodic/open_manipulator_p_simulations -> patches/debian/melodic/open_manipulator_p_simulations
   adb1e11..f0ea703  patches/debian/melodic/stretch/open_manipulator_p_gazebo -> patches/debian/melodic/stretch/open_manipulator_p_gazebo
   c702af1..c03d164  patches/debian/melodic/stretch/open_manipulator_p_simulations -> patches/debian/melodic/stretch/open_manipulator_p_simulations
   4c14e41..8f226d2  patches/release/melodic/open_manipulator_p_gazebo -> patches/release/melodic/open_manipulator_p_gazebo
   5b492d1..b02e61b  patches/release/melodic/open_manipulator_p_simulations -> patches/release/melodic/open_manipulator_p_simulations
   7d98f87..983ca11  release/melodic/open_manipulator_p_gazebo -> release/melodic/open_manipulator_p_gazebo
   011d454..ab7c157  release/melodic/open_manipulator_p_simulations -> release/melodic/open_manipulator_p_simulations
<== Pushed changes successfully
==> Pushing tags to release repository for 'open_manipulator_p_simulations'
==> git push --tags
Username for 'https://github.com': JaehyunShim
Password for 'https://JaehyunShim@github.com':
Total 0 (delta 0), reused 0 (delta 0)
To https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release.git
 * [new tag]         debian/ros-melodic-open-manipulator-p-gazebo_1.0.0-2_bionic -> debian/ros-melodic-open-manipulator-p-gazebo_1.0.0-2_bionic
 * [new tag]         debian/ros-melodic-open-manipulator-p-gazebo_1.0.0-2_stretch -> debian/ros-melodic-open-manipulator-p-gazebo_1.0.0-2_stretch
 * [new tag]         debian/ros-melodic-open-manipulator-p-simulations_1.0.0-2_bionic -> debian/ros-melodic-open-manipulator-p-simulations_1.0.0-2_bionic
 * [new tag]         debian/ros-melodic-open-manipulator-p-simulations_1.0.0-2_stretch -> debian/ros-melodic-open-manipulator-p-simulations_1.0.0-2_stretch
 * [new tag]         release/melodic/open_manipulator_p_gazebo/1.0.0-2 -> release/melodic/open_manipulator_p_gazebo/1.0.0-2
 * [new tag]         release/melodic/open_manipulator_p_simulations/1.0.0-2 -> release/melodic/open_manipulator_p_simulations/1.0.0-2
<== Pushed tags successfully
==> Generating pull request to distro file located at 'https://raw.githubusercontent.com/ros/rosdistro/f8335c214e20d445756ba6479e69a050bbeb3094/melodic/distribution.yaml'
Would you like to add documentation information for this repository? [Y/n]? y
==> Looking for a doc entry for this repository in a different distribution...
No existing doc entries found for use as defaults.
Please enter your repository information for the doc generation job.
This information should point to the repository from which documentation should be generated.
VCS Type must be one of git, svn, hg, or bzr.
VCS type: git
VCS url: https://github.com/ROBOTIS-GIT/open_manipulator_p_simulations.git
VCS version must be a branch, tag, or commit, e.g. master or 0.1.0
VCS version: melodic-devel
Would you like to add source information for this repository? [Y/n]? y
==> Looking for a source entry for this repository in a different distribution...
No existing source entries found for use as defaults.
Please enter information which points to the active development branch for this repository.
This information is used to run continuous integration jobs and for developers to checkout from.
VCS Type must be one of git, svn, hg, or bzr.
VCS type: git
VCS url: https://github.com/ROBOTIS-GIT/open_manipulator_p_simulations.git
VCS version must be a branch, tag, or commit, e.g. master or 0.1.0
VCS version: melodic-devel
Since you are on github we can add a job to run your tests on each pull request.If you would like to turn this on please see http://wiki.ros.org/buildfarm/Pull%20request%20testing for more information. There is more setup required to setup the hooks correctly.
Would you like to turn on pull request testing? [y/N]? n
Would you like to add a maintenance status for this repository? [Y/n]? y
Status: developed
Status Description [press Enter for no change]:

Please enter a maintenance status.
Valid maintenance statuses:
- developed: active development is in progress
- maintained: no new development, but bug fixes and pull requests are addressed
- unmaintained: looking for new maintainer, bug fixes and pull requests will not be addressed
- end-of-life: should not be used, will disappear at some point
Status: developed
You can also enter a status description.
This is usually reserved for giving a reason when a status is 'end-of-life'.
Status: developed
Status Description [press Enter for no change]:
Unified diff for the ROS distro file located at '/tmp/tmpisdZsQ/open_manipulator_p_simulations-1.0.0-2.patch':
--- f8335c214e20d445756ba6479e69a050bbeb3094/melodic/distribution.yaml
+++ f8335c214e20d445756ba6479e69a050bbeb3094/melodic/distribution.yaml
@@ -7271,6 +7271,24 @@
       url: https://github.com/ROBOTIS-GIT/open_manipulator_msgs.git
       version: melodic-devel
     status: developed
+  open_manipulator_p_simulations:
+    doc:
+      type: git
+      url: https://github.com/ROBOTIS-GIT/open_manipulator_p_simulations.git
+      version: melodic-devel
+    release:
+      packages:
+      - open_manipulator_p_gazebo
+      - open_manipulator_p_simulations
+      tags:
+        release: release/melodic/{package}/{version}
+      url: https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release.git
+      version: 1.0.0-2
+    source:
+      type: git
+      url: https://github.com/ROBOTIS-GIT/open_manipulator_p_simulations.git
+      version: melodic-devel
+    status: developed
   open_manipulator_simulations:
     doc:
       type: git
==> Checking on GitHub for a fork to make the pull request from...
==> Using this fork to make a pull request from: JaehyunShim/rosdistro
==> Cloning JaehyunShim/rosdistro...
==> mkdir -p rosdistro
==> git init
Initialized empty Git repository in /tmp/VJWIB0/rosdistro/.git/
Pull Request Title: open_manipulator_p_simulations: 1.0.0-2 in 'melodic/distribution.yaml' [bloom]
Pull Request Body :
Increasing version of package(s) in repository `open_manipulator_p_simulations` to `1.0.0-2`:

- upstream repository: https://github.com/ROBOTIS-GIT/open_manipulator_p_simulations.git
- release repository: https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release.git
- distro file: `melodic/distribution.yaml`
- bloom version: `0.10.0`
- previous version for package: `null`

## open_manipulator_p_gazebo

```
* First release of the open_manipulator_p_simulations stack
* Contributors: Jaehyun Shim, YongHo-Na, HyeJong KIM
```

## open_manipulator_p_simulations

```
* First release of the open_manipulator_p_simulations stack
* Contributors: Jaehyun Shim, YongHo-Na, HyeJong KIM
```

Open a pull request from 'JaehyunShim/rosdistro:bloom-open_manipulator_p_simulations-3' into 'ros/rosdistro:master'?
Continue [Y/n]? y
==> git checkout -b bloom-open_manipulator_p_simulations-3
Switched to a new branch 'bloom-open_manipulator_p_simulations-3'
==> Pulling latest rosdistro branch
remote: Enumerating objects: 149661, done.
remote: Total 149661 (delta 0), reused 0 (delta 0), pack-reused 149661
Receiving objects: 100% (149661/149661), 87.36 MiB | 4.82 MiB/s, done.
Resolving deltas: 100% (91344/91344), done.
From https://github.com/ros/rosdistro
 * branch                master     -> FETCH_HEAD
==> git reset --hard f8335c214e20d445756ba6479e69a050bbeb3094
HEAD is now at f8335c214 cloudwatch_common: 1.1.5-1 in 'dashing/distribution.yaml' [bloom] (#26984)
==> Writing new distribution file: melodic/distribution.yaml
==> git add melodic/distribution.yaml
==> git commit -m "open_manipulator_p_simulations: 1.0.0-2 in 'melodic/distribution.yaml' [bloom]"
[bloom-open_manipulator_p_simulations-3 09d4a1c79] open_manipulator_p_simulations: 1.0.0-2 in 'melodic/distribution.yaml' [bloom]
 1 file changed, 18 insertions(+)
==> Pushing changes to fork
Counting objects: 4, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (4/4), 489 bytes | 489.00 KiB/s, done.
Total 4 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
remote:
remote: Create a pull request for 'bloom-open_manipulator_p_simulations-3' on GitHub by visiting:
remote:      https://github.com/JaehyunShim/rosdistro/pull/new/bloom-open_manipulator_p_simulations-3
remote:
To https://github.com/JaehyunShim/rosdistro.git
 * [new branch]          bloom-open_manipulator_p_simulations-3 -> bloom-open_manipulator_p_simulations-3
<== Pull request opened at: https://github.com/ros/rosdistro/pull/26987
```
