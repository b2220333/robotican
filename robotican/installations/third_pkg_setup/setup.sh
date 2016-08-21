#!/bin/bash

#echo -e "\e[34mStarting setup...\e[0m"
#echo -e "\e[34mInstalling python-tk package...\e[0m"
#apt-get -y install python-tk
#echo -e "\e[34mFinish installing python-tk package...\e[0m"
#echo -e "\e[34mInstalling idle package...\e[0m"
#apt-get -y install idle
#apt-get -y install python-qt4
#echo -e "\e[34mFinish installing idle package..\e[0m"

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo -e "\e[34mInstalling additional resources...\e[0m"
apt-get -y install chrony openssh-server expect espeak ros-indigo-joy ros-indigo-hector-slam ros-indigo-usb-cam ros-indigo-openni2* ros-indigo-hokuyo-node  python-pygame ros-indigo-yocs-velocity-smoother ros-indigo-qt-build ros-indigo-pr2-controllers espeak espeak-data libespeak-dev
apt-get -y install ros-indigo-moveit-full ros-indigo-ueye-cam ros-indigo-gazebo-ros-pkgs ros-indigo-gazebo-ros-control ros-indigo-hector-gazebo ros-indigo-ros-controllers ros-indigo-gmapping ros-indigo-navigation ros-indigo-robot-localization ros-indigo-twist-mux ros-indigo-serial 
echo -e "\e[34mSyncing clock...\e[0m"
ntpdate ntp.ubuntu.com

cd ~/catkin_ws/src
git clone https://github.com/arebgun/dynamixel_motor.git
git clone https://github.com/muhrix/espeak_ros.git

#echo -e "\e[34mSetting usb rules..\e[0m"
#cp $DIR/ric_usb.rules /etc/udev/rules.d
#echo -e "\e[34mRestarting rules..\e[0m"
#/etc/init.d/udev reload
#echo -e "\e[34mInstallation is complete..\e[0m"



