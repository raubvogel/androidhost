############################################################
# Dockerfile to build an environment to access an android device
# using ADB and fastboot
# 
# Based on Ubuntu 
# 20210728
############################################################

# Set the base image to Ubuntu
FROM ubuntu:latest

# File Author / Maintainer
MAINTAINER Mauricio Tavares "raubvogel@gmail.com"

################## BEGIN INSTALLATION ######################


RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y android-tools-adb android-tools-fastboot \
    usbutils wget

##################### INSTALLATION END #####################


