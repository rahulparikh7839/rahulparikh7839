#!/bin/sh


yum clean all
sudo yum update -y
sudo yum install java -y
sudo yum install https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm -y
sudo yum install postgresql11-server -y

sudo systemctl start firewalld
sudo su - 
sudo /usr/pgsql-11/bin/postgresql-11-setup initdb
sudo systemctl start postgresql-11
sudo systemctl enable postgresql-11
