#!/bin/sh

# CONSTANTS
RED=`\033[0;31m`
GREEN=`\033[0;32m`
YELLOW=`\033[1;33m`
NC=`\033[0m`


# Pre Setup
echo -e "${YELLOW}Pre Setup${NC} ..."
sudo apt update
sudo apt -y upgrade
echo -e "${GREEN}Pre Setup${NC}"

# Apt Packages
echo -e "${YELLOW}APT packages${NC} ..."
echo -e "${YELLOW} + pass ${NC} ..."
sudo apt -y install pass pass-extension-otp pass-extension-audit
sudo apt -y install gnupg2 gnupg-agent gnupg-curl scdaemon pcscd
echo -e "${GREEN}APT packages${NC} ..."

# Yubikey

