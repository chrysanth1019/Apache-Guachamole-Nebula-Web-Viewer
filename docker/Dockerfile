# Use Ubuntu as the base image
# FROM linuxmintd/mint21.3-amd64
# FROM ubuntu22.04
FROM nvidia/cuda:11.8.0-base-ubuntu22.04

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update packages and install necessary dependencies
RUN apt-get update && apt-get install -y \
    xvfb \
    x11vnc \
    libglu1-mesa \
    libglu1-mesa-dev \
    python3 \
    python3-pip \
    python3-venv \
    python3-dev \
    libssl-dev \
    libffi-dev \
    build-essential \
    libpulse-dev \
    curl

RUN apt-get install -y libnss3
RUN apt install libxcb-xinerama0

# RUN apt-get install -y libxcb-xinerama0 libxcb1 libxrender1 libxkbcommon-x11-0 libegl1-mesa

RUN apt-get install -y  libqt5widgets5 \
    libqt5core5a \
    libqt5dbus5 \
    libqt5gui5 \
    libxcb-render0-dev \
    libxcb-shape0-dev \
    libxcb-xfixes0-dev

RUN apt install libx11-dev

#RUN apk --no-cache upgrade \#
#    && apk --no-cache add \
#    iptables iptables-legacy \
#    libcap 


# RUN apt-get install qt5ct

# Clean up package cache and unnecessary files to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set up Xvfb (X virtual framebuffer) to simulate a display
ENV DISPLAY=:99

# Copy your workspace files into the Docker container
COPY . /workspace

# Set the working directory to /workspace
WORKDIR /workspace

# Make the test.sh script executable
RUN chmod +x run.sh
RUN chmod +x resize

# Run the test.sh script
CMD ["./run.sh"] 


