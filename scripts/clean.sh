sudo apt-get update && \\
    sudo apt-get upgrade -y && \\
    sudo apt-get dist-upgrade -y && \\
    sudo apt-get autoremove -y && \\
    sudo apt-get autoclean -y && \\
    sudo apt-get clean -y

sudo deborphan | xargs sudo apt-get -y remove --purge

dpkg -l |grep -i ^rc | cut -d " " -f 3 | xargs sudo dpkg --purge


