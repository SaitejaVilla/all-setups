#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.10.61524.zip
unzip sonarqube-8.9.10.61524.zip
amazon-linux-extras install java-openjdk11 -y
useradd sonar
chown sonar:sonar sonarqube-8.9.10.61524 -R
chmod 777 sonarqube-8.9.10.61524 -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-8.9.10.61524/bin/linux-x86-64/sonar.sh start

#echo "user=admin & password=admin"
