#!/bin/bash

echo "Initilizing project for the first time"

echo "Tidying go module (go mod tidy)"
go mod tidy

echo "Installing dependencies (npm install)"
npm install

echo "Project Ready!, for more details refer to the README.md file"