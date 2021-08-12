yes | sudo apt-get install libatlas-base-dev
yes | pip3 install numpy transforms3d pigpio pyserial
yes | pip install numpy transforms3d pigpio pyserial
yes | sudo pip install numpy transforms3d pigpio pyserial

cd ..

# UDPComms
git clone https://github.com/qdpupper/UDPComms.git
cd UDPComms
sudo bash install.sh
cd ..

# PS4Joystick
#git clone https://github.com/stanfordroboticsclub/PS4Joystick.git
git clone https://github.com/qdpupper/PS4Joystick.git
cd PS4Joystick
sudo bash install.sh
cd ..

# joystick.service
#git clone https://github.com/stanfordroboticsclub/PupperCommand.git
git clone https://github.com/qdpupper/PupperCommand.git
cd PupperCommand
sudo bash install.sh
cd ..

#sudo systemctl enable joystick

#wget https://github.com/joan2937/pigpio/archive/v74.zip
#unzip v74.zip
#cd pigpio-74
#make
#sudo make install
#cd ..

cd StanfordQuadruped
sudo ln -s $(realpath .)/robot.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable robot
sudo systemctl start robot
