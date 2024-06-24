#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install openjdk-11-jdk -y
sudo apt install tomcat10 tomcat10-admin tomcat10-docs tomcat10-common git -y


#Manual install
#sudo apt update
#sudo apt install openjdk-11-jdk
#sudo groupadd tomcat
#sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
#wget /tmp https://downloads.apache.org/tomcat/tomcat-9/v9.0.90/bin/apache-tomcat-9.0.90.tar.gz
#sudo mkdir /opt/tomcat
#sudo tar xzvf apache-tomcat-9.0.90.tar.gz -C /opt/tomcat --strip-components=1
#sudo chown -R tomcat: /opt/tomcat
#sudo chmod -R 755 /opt/tomcat

#sudo nano /etc/systemd/system/tomcat.service

#Description=Apache Tomcat Web Application Container
#After=network.target

#[Service]
#Type=forking

#Environment=JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
#Environment=CATALINA_PID=/opt/tomcat/temp/tomcat.pid
#Environment=CATALINA_HOME=/opt/tomcat
#Environment=CATALINA_BASE=/opt/tomcat
#Environment='CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC'
#Environment='JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom'

#ExecStart=/opt/tomcat/bin/startup.sh
#ExecStop=/opt/tomcat/bin/shutdown.sh

#User=tomcat
#Group=tomcat
#UMask=0007
#RestartSec=10
#Restart=always

#[Install]
#WantedBy=multi-user.target

#sudo systemctl daemon-reload
#sudo systemctl start tomcat
#sudo systemctl enable tomcat
