#!/bin/bash

echo "Initilizing project for the first time"

echo "Installing NextJS"
npm init
npm install next@12.0.4 react@17.0.2 react-dom@17.0.2

echo "Installing dependencies (npm install)"
npm install

echo 'Add the below scripts to your package.json file.\n\n"scripts": {
  "dev": "next dev",
  "build": "next build",
  "start": "next start",
  "lint": "next lint"
}\n\n'

echo "Project Ready!, for more details refer to the README.md file"