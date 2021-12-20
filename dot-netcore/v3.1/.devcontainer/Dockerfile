# Dockerfile for .NetCore Dev Evn.
# Ubuntu - v20.04
# .NetCore - v3.1
# node - v14.x
# npm - v6.x

#FROM ubuntu:20.04
FROM ubuntu:20.04

ARG CoreVer=3.1

# Configure TimeZone
ENV TZ=Canada/Eastern
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install any updates (standard routine for a fresh system)
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get -y install build-essential

# Install wget to download files
RUN apt-get -y install wget

# Create temp directory
WORKDIR /temp_downloads

# Install .Net Package Signing Keys
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb

# Install .NetCore 3.1
RUN apt-get install -y apt-transport-https && apt-get update && apt-get install -y dotnet-sdk-$CoreVer

# Confirm .NetCore version
RUN dotnet --version

# Install Entity Framework CLI Tool
RUN dotnet tool install --global dotnet-ef

# Install Nodejs and npm (npm is bundled with nodejs)
RUN wget https://deb.nodesource.com/setup_14.x

RUN bash setup_14.x
RUN apt-get install -y nodejs

# Confirm node and npm versions
RUN node -v
RUN npm -v

# Clean up
WORKDIR /
RUN rm -rf /temp_downloads

# Final confirmation message
RUN echo "Successfully setup .NetCore ENV"