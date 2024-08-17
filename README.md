# Automated Setup Script

This script automates the installation of essential packages and applications on a Linux system using APT and Flatpak. It is particularly useful for setting up a new system or configuring an existing one with necessary tools and applications.

## Features

- **APT Package Installation:** Automatically installs a list of commonly used APT packages.
- **Flatpak Application Installation:** Installs a set of popular applications via Flatpak.
- **Flathub Repository Setup:** Adds the Flathub repository if it isn't already added to the system.

## Requirements

- A Linux distribution that supports APT and Flatpak.
- Internet connection to download and install the packages.

## How to Use

1. **Clone or download the script:**

    ```bash
    git clone <repository-url>
    cd <repository-directory>
    ```

2. **Make the script executable:**

    ```bash
    chmod +x setup.sh
    ```

3. **Run the script:**

    ```bash
    ./setup.sh
    ```

    The script will update the package list, install the specified APT packages, add the Flathub repository (if needed), and then install the specified Flatpak applications.

## APT Packages Included

- `curl`: Command-line tool for transferring data with URLs.
- `wget`: Command-line utility for downloading files from the web.
- `git`: Version control system.
- `vim`: Text editor.
- `htop`: Interactive process viewer.
- `python3` and `python3-pip`: Python 3 interpreter and package manager.
- `g++`: C++ compiler.
- `build-essential`: Essential packages for building Debian packages.
- `gnome-tweaks`: Tool for adjusting advanced GNOME settings.

## Flatpak Applications Included

- **VLC** (`org.videolan.VLC`): Media player.
- **Brave Browser** (`com.brave.Browser`): Web browser.
- **Telegram** (`org.telegram.desktop`): Messaging app.
- **Discord** (`com.discordapp.Discord`): Voice, video, and text communication app.
- **WhatsApp Desktop** (`io.github.mimbrero.WhatsAppDesktop`): Unofficial WhatsApp desktop client.
- **Extension Manager (GNOME)** (`com.mattjakeman.ExtensionManager`): Manage GNOME Shell extensions.
- **OBS Studio** (`com.obsproject.Studio`): Video recording and live streaming software.

## Notes

- The script checks if the Flathub repository is already added before attempting to add it again.
- Ensure that Flatpak is installed on your system before running the script. If not, you can install it using:

    ```bash
    sudo apt-get install flatpak
    ```

## License

This project is licensed under the MIT License.
