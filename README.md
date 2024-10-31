# Nebula Web Viewer Installation Guide

This document provides a step-by-step guide for installing **Nebula Web Viewer** on a Linux server.

## Prerequisites

Ensure that your system is up-to-date:

```bash
sudo apt update
sudo apt upgrade -y
```

## Install Guacamole server

#### Install dependencies

```bash
sudo apt install -y \
    libcairo2-dev  libjpeg-turbo8-dev libjpeg62-dev \
    libpng-dev libtool-bin uuid-dev libavcodec-dev \
    libavformat-dev libavutil-dev libswscale-dev \
    freerdp2-dev libpango1.0-dev libssh2-1-dev \
    libtelnet-dev libvncserver-dev libwebsockets-dev \
    libpulse-dev libssl-dev  libvorbis-dev libwebp-dev \
    autoreconf
```

#### Download Guacamole server source code

https://github.com/apache/guacamole-server/archive/refs/tags/1.5.5.tar.gz

```bash
tar -xzf guacamole-server-1.5.5.tar.gz
```

#### Compile Guacamole server

```bash
cd guacamole-server-1.5.5/
autoreconf -fi
./configure --with-init-dir=/etc/init.d
make
make install
ldconfig
```

#### Check result

```bash
which guacd
guacd -v
```

## Install guacamole client

It just needs to download.

https://apache.org/dyn/closer.lua/guacamole/1.5.5/binary/guacamole-1.5.5.war?action=download

```bash
tar -xzf apache-tomcat-7.0.109.tar.gz
sudo mv apache-tomcat-7.0.109 /opt/tomcat7
```

## Install tomcat7

https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.109/bin/apache-tomcat-7.0.109.tar.gz

```bash
sudo cp guacamole.war /opt/tomcat7/webapps/
/opt/tomcat7/bin/startup.sh
```

## Configure Guacamole Server

Default guacd config dir is **/etc/guacamole**. You copy all of **guacd-config** to **/ect/guacamole**. If you want to customize logo and app title, you can copy brand.jar to **/etc/guacamole/extensions**. And if you want to use MySQL server for guacd authentication, you should copy **mysql-connector-j-9.1.0.jar** to **/etc/guacamole/lib** and **guacamole-auth-jdbc-mysql-1.5.5.jar** to **/etc/guacamole/extensions**

## Build docker image

```bash
docker build -t nebula .
```

## Install SW Form server

Build xojo project for Linux

```bash
cp docker-runner ....
cp SW_FormConfig.txt /root/Desktop/SW_FormConfig.txt
```

```bash
sudo apt install mysql-server
```

DB name for SW Form sw_forms (You can use SW_Form/config/scheme.sql)

```bash
mysql -u root -p
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'new_password';
FLUSH PRIVILEGES;
```
