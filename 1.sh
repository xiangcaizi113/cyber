#!/bin/bash

# Update package lists
sudo apt-get update

# Install screen
sudo apt-get install -y screen

# Navigate to home directory
cd

# Download and extract CyberChain package
wget https://github.com/CyberChainXyz/go-cyberchain/releases/download/v1.0.0-beta/ccx-Linux-X64-v1.0.0-beta.tar.gz
sudo tar -xvzf ccx-Linux-X64-v1.0.0-beta.tar.gz

# Navigate to extracted directory
cd ccx-v1.0.0-beta

# Create a screen session named 'node' and run the command
screen -dmS node ./ccx -ws -mine -miner.etherbase=0x17FdA1F1965C6900499c6589b165B106E2e14Ea5

# Navigate back to home directory
cd

# Download and extract xMiner package
wget https://github.com/CyberChainXyz/xMiner/releases/download/v0.1.15-beta/xMiner-Linux-X64-v0.1.15-beta.tar.gz
sudo tar -xvzf xMiner-Linux-X64-v0.1.15-beta.tar.gz

# Navigate to extracted directory
cd xMiner-v0.1.15-beta

# Create a screen session named 'miner' and run the command
screen -dmS miner ./solo_mining.sh

# Output success message
echo "Setup complete. Screen sessions 'node' and 'miner' are running."
