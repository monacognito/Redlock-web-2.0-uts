# Menggunakan base image dari Jenkins
FROM jenkins/jenkins:lts
# Menggunakan user ContainerAdministrator
USER ContainerAdministrator
# Menginstal Git dan Docker Desktop menggunakan Chocolatey
RUN choco install -y git docker-desktop
# Menginstal Chocolatey Package Manager pada Windows
RUN powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" 
# Menginstal Git dan Docker Desktop menggunakan Chocolatey
RUN choco install -y git docker-desktop 
# Mengganti user ke ContainerUser
USER ContainerUser
# Menginstal plugin blueocean, docker-workflow, dan github pada Jenkins
RUN jenkins-plugin-cli --plugins "blueocean docker-workflow github" 