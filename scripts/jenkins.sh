#!/bin/sh

  yum clean all

#Update YUM package Manager

  sudo yum update -y
#Install Java
  sudo yum install java -y
#Fetch latest Jenkins repo
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
  sudo yum install daemonize -y
#Install Jenkins 
 sudo yum install jenkins -y
#Start Jenkins
  sudo systemctl start jenkins
  sudo systemctl enable jenkins
