#!/bin/bash

echo "Initilizing project for the first time"

echo "Restoring dotnet (dotnet restore)"
dotnet restore

echo "Installing dependencies (npm install)"
npm install

echo "Project Ready!, for more details refer to the README.md file"