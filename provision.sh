#!/bin/bash

sudo apt-add-repository -y ppa:ondrej/php

sudo apt-get -y update
sudo apt-get -y dist-upgrade

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install apache2
sudo a2dismod mpm_event
sudo a2enmod mpm_worker
sudo service apache2 restart

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install php7.0-{bcmath,cgi,cli,common,curl,fpm,gd,gmp,json,mbstring,mcrypt,mysql,opcache,readline,sqlite3,xml,xmlrpc,xsl,zip}

# AWS CodeDeploy
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install ruby
cd /tmp; wget https://aws-codedeploy-ap-northeast-1.s3.amazonaws.com/latest/install
chmod 755 install
sudo ./install auto

sudo apt-get -y clean
