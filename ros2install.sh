Printf "Setting up the ROS2 running environment, pls make sure your OS version is Ubuntu 22.04, \n This shell script only install for Ros2 humble, you need setup Ubuntu24.04 and modify humble to Jazzy if you need install Jazzy version. \n Author: Mang Zhang (Ivan Cheung) Shenzhen, China, 2026.03 \n www.pavogroup.top...\n"
printf "\033[33m Press any key to continue...\n"
read -n 1 -s -p ""

printf "Run command [1]: sudo apt update && sudo apt install locales\n"
sudo apt update && sudo apt install locales

if [ $? -eq 0 ]; then
    printf "\033[32m Command executed successfully."
else
    printf "\033[31m Command failed."
fi

printf "\033[33m Press any key to continue...\n"
read -n 1 -s -p ""

printf "Run command [2]: sudo locale-gen en_US en_US.UTF-8\n"
sudo locale-gen en_US en_US.UTF-8

if [ $? -eq 0 ]; then
    printf "\033[32m Command executed successfully."
else
    printf "\033[31m Command failed."
fi

printf "\033[33m Press any key to continue...\n"
read -n 1 -s -p ""

printf "Run command [3]: sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8\n"
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

if [ $? -eq 0 ]; then
    printf "\033[32m Command executed successfully."
else
    printf "\033[31m Command failed."
fi

printf "\033[33m Press any key to continue...\n"
read -n 1 -s -p ""

printf "Run command [4]: export LANG=en_US.UTF-8\n"
export LANG=en_US.UTF-8

if [ $? -eq 0 ]; then
    printf "\033[32m Command executed successfully."
else
    printf "\033[31m Command failed."
fi

printf "\033[33m Press any key to continue...\n"
read -n 1 -s -p ""

printf "Run command [5]: sudo apt update && sudo apt install curl gnupg lsb-release\n"
sudo apt update && sudo apt install curl gnupg lsb-release

if [ $? -eq 0 ]; then
    printf "\033[32m Command executed successfully."
else
    printf "\033[31m Command failed."
fi

printf "\033[33m Press any key to continue...\n"
read -n 1 -s -p ""

printf "Run command [6]: echo "185.199.108.133 raw.githubusercontent.com" >> /etc/hosts\n"
echo "185.199.108.133 raw.githubusercontent.com" >> /etc/hosts

if [ $? -eq 0 ]; then
    printf "\033[32m Command executed successfully."
else
    printf "\033[31m Command failed."
fi

printf "\033[33m Press any key to continue...\n"
read -n 1 -s -p ""

printf "Run command [7]: sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg\n"
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
if [ $? -eq 0 ]; then
    printf "\033[32m Command executed successfully."
else
    printf "\033[31m Command failed."
fi

printf "\033[33m Press any key to continue...\n"
read -n 1 -s -p ""


printf "Run command [8]: echo 'deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main' | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null\n"
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
if [ $? -eq 0 ]; then
    printf "\033[32m Command executed successfully."
else
    printf "\033[31m Command failed."
fi

printf "\033[33m Press any key to continue...\n"
read -n 1 -s -p ""

printf "Run command [9]: sudo apt update\n"
sudo apt update

printf "Run command [10]: sudo apt upgrade\n"
sudo apt upgrade

printf "Run command [11]: sudo apt install ros-humble-desktop\n"
sudo apt install ros-humble-desktop

if [ $? -eq 0 ]; then
    printf "\033[32m Command executed successfully."
else
    printf "\033[31m Command failed."
fi

printf "\033[33m Press any key to continue...\n"
read -n 1 -s -p ""

printf "Run command [12]: source /opt/ros/humble/setup.bash\n"
source /opt/ros/humble/setup.bash

if [ $? -eq 0 ]; then
    printf "\033[32m Command executed successfully."
else
    printf "\033[31m Command failed."
fi

printf "\033[33m Press any key to continue...\n"
read -n 1 -s -p ""

printf "Run command [13]: echo 'source /opt/ros/humble(jazzy)/setup.bash' >> ~/.bashrc\n"
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
if [ $? -eq 0 ]; then
    printf "\033[32m Command executed successfully."
else
    printf "\033[31m Command failed."
fi

printf "\033[33m Press any key to continue...\n"
read -n 1 -s -p ""

printf "Run command [14]: Run Ros2 test install results...\n"
ros2

if [ $? -eq 0 ]; then
    printf "\033[32m ROS2 installed successfully.\n"
else
    printf "\033[31m ROS2 install failed.\n"
fi
