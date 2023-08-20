# Debian Docker Image
FROM debian:latest

# Non-interactive installation mode
ENV DEBIAN_FRONTEND=noninteractive

# Update all packages
RUN apt update
RUN apt install -y apt-utils software-properties-common apt-transport-https sudo \
    openssh-server screen python3 git android-tools-adb bc bison \
    build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32ncurses-dev \
    lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev \
    libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc yasm zip zlib1g-dev \
    libtinfo5 libncurses5 tmux ccache zsh neofetch locales locales-all wget shellcheck nano direnv

# Create user gitpod
RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /usr/bin/bash -p gitpod gitpod && \
    # passwordless sudo for users in the 'sudo' group
    sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers

# Switch to Gitpod User
USER gitpod

# Setup Localtime
RUN sudo ln -sf /usr/share/zoneinfo/America/Argentina/Buenos_Aires /etc/localtime

# Set the locale
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
RUN sudo locale-gen en_US.UTF-8
