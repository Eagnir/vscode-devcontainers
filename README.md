# VSCode DevContainers
Development container files / setup for various environments

## Envirounments Supported
- [.Net Core](dot-netcore)
  - [v3.1](dot-netcore/v3.1)
- [Nextjs](nextjs)
  - [v12.0.4](nextjs/v12.0.4)
- [Nodejs](nodejs)
  - [v14.x](nodejs/v14.x)
  - [v17.x](nodejs/v17.x)
- [Go Language](golang)
  - [v1.16.4](golang/v1.16.4)

## Basic Operating System
All the development containers are based off docker image of Linux Ubuntu (`ubuntu:20.04`)

## Usage
Simply take the `.devcontainer` folder from the required envirounment folder and place it at the root of your project.

Open the project root in Visual Code (vscode) and when prompted, select `Reopen in Container`

Wait for the container to be build and once done, you will have a working dev envirounment.

## Configuration / Customization
Some of the devcontainers have possible configurations like timezone, etc. Kindly check the specific verion's `README.md` file for more details.

## Init Script
All the devcontainers contains an `init.sh` bash script file which is exected the first time the container is created.

This is the place to init your project dependencies (npm packages), cloud configuration (terraform init) / authorization (aws configure), etc.

## Dependencies
- [Visual Code](https://code.visualstudio.com) (vscode)
- VSCode extensions
    - [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
    - [Remote - SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
    - [Remote - SSH: Editing Configuration](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh-edit)
    - [Remote - WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl)
- [Docker](https://www.docker.com/products/docker-desktop)
    - **Windows:** Docker Desktop 2.0+ on Windows 10 Pro/Enterprise. Windows 10 Home (2004+) requires Docker Desktop 2.2+ and the WSL2 back-end. (Docker Toolbox is not supported.)
    - **macOS:** Docker Desktop 2.0+.
    - **Linux:** Docker CE/EE 18.06+ and Docker Compose 1.21+. (The Ubuntu snap package is not supported.)

- Internet Connection (faster the better)

## Issues
If you face issues in creating the docker container, it would mostly be due to third party files not being available.

Feel free to open a issue on this repo or use another version of the envirounment.