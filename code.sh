#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt-get update

# List of APT packages to install
packages=(
    "curl"
    "wget"
    "git"
    "vim"
    "htop"
    "python3 python3-pip"
    "g++"
    "build-essential"
    "gnome-tweaks"
)

# Install each package
for package in "${packages[@]}"; do
    echo "Installing $package..."
    sudo apt-get install -y $package
done

# List installed APT packages
echo "Listing installed APT packages..."
apt list --installed

# Add flathub repository if not already added
if ! sudo flatpak remote-list | grep -q flathub; then
    echo "Adding flathub repository..."
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi

# Install applications using Flatpak
flatpak_apps=(
    "org.videolan.VLC" # VLC
    "com.brave.Browser" # Brave Browser
    "org.telegram.desktop" # Telegram
    "com.discordapp.Discord" # Discord
    "io.github.mimbrero.WhatsAppDesktop" # WhatsApp Desktop
    "com.mattjakeman.ExtensionManager" # Extension Manager (GNOME)
    "com.obsproject.Studio" # OBS Studio
)

for app in "${flatpak_apps[@]}"; do
    echo "Installing $app..."
    sudo flatpak install flathub $app -y
done

echo "All packages installed successfully."
