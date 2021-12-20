# Dockerfile for Nextjs Dev Evn.
# Ubuntu - v20.04
# node - v17.x
# npm - v8.x
# nextjs - v12.0.4

#FROM ubuntu:20.04
FROM ubuntu:20.04

# Configure TimeZone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install any updates (standard routine for a fresh system)
RUN apt-get update
RUN apt-get -y upgrade

# Install git for source version management
RUN apt-get -y install git

RUN apt-get -y install build-essential

# Install wget to download files
RUN apt-get -y install wget

# Install CURL
RUN apt-get -y install curl

# Install lsb-release (required by below command)
RUN apt-get -y install lsb-release

# Installing package to enable apt-add-repository command belo
RUN apt-get -y install software-properties-common

# Install zip + unzip
RUN apt-get -y install zip
RUN apt-get -y install unzip

# Create temp directory
WORKDIR /temp_downloads

# Install Nodejs and npm (npm is bundled with nodejs)
RUN wget https://deb.nodesource.com/setup_17.x

RUN bash setup_17.x
RUN apt-get install -y nodejs

# Confirm node and npm versions
RUN node -v
RUN npm -v

# Clean up
WORKDIR /
RUN rm -rf /temp_downloads

# Final confirmation message
RUN echo "Successfully setup NextJS"