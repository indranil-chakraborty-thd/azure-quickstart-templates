#!/bin/bash
# Installs Java
sudo yum -y install $1

# Creates the tomcat user
sudo useradd -u 5000 -s /bin/nologin tomcat

# Installs Tomcat
wget -P /tmp $2
sudo tar -xzf /tmp/apache-tomcat-$3.tar.gz -C /opt

# Create the symlink
sudo ln -s /opt/apache-tomcat-$3 /opt/tomcat

# Transfer ownership to the tomcat user
sudo chown -R tomcat:tomcat /opt/apache-tomcat-$3
sudo chown -R tomcat:tomcat /opt/tomcat
