#!/bin/sh

# Assign parameters to variables
MRB_URL=${MRB_URL}      # Server address for wget
VNC_ADDR="${VNC_ADDR}"         # x11vnc server address
MRB_FILE="${MRB_FILE}"         # mrb file name

# apt install x11vnc

# Navigate to the data directory

Xvfb :99 -screen 0 1920x1080x24 &
sleep 1
echo "Sleep 5"
sleep 1
echo "Sleep 4"
sleep 1
echo "Sleep 3"
sleep 1
echo "Sleep 2"
sleep 1
echo "Sleep 1"
sleep 1

cd data

# Check if the mrb file exists, if not, download it
if [ -e "$MRB_FILE" ]; then
    echo "File exists"
else
    echo "Downloading file from $MRB_URL..."
    curl $MRB_URL > data.mrb
fi

# Go back to the root directory
cd ..

# Navigate to Nebula directory and run the application
cd Nebula-1.1.01--linux-amd64
./Nebula ../data/$MRB_FILE &
cd ..

sleep 10

echo "resizing..."
./resize

# Connect to the x11vnc server
x11vnc -display :99 -connect $VNC_ADDR

