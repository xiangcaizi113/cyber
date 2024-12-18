#!/bin/bash

# Update package lists
sudo apt-get update

# Install necessary packages
sudo apt-get install -y nohup

# Navigate to home directory
cd

# Download and extract CyberChain package
wget https://github.com/CyberChainXyz/go-cyberchain/releases/download/v1.0.0-beta/ccx-Linux-X64-v1.0.0-beta.tar.gz
sudo tar -xvzf ccx-Linux-X64-v1.0.0-beta.tar.gz

# Navigate to extracted directory
cd ccx-v1.0.0-beta

# Run 'node' process with nohup and output to node.logs
nohup ./ccx -ws -mine -miner.etherbase=0x17FdA1F1965C6900499c6589b165B106E2e14Ea5 > ~/node.logs 2>&1 &

# Navigate back to home directory
cd

# Download and extract xMiner package
wget https://github.com/CyberChainXyz/xMiner/releases/download/v0.1.15-beta/xMiner-Linux-X64-v0.1.15-beta.tar.gz
sudo tar -xvzf xMiner-Linux-X64-v0.1.15-beta.tar.gz

# Navigate to extracted directory
cd xMiner-v0.1.15-beta

# Make solo_mining.sh executable
chmod +x solo_mining.sh

# Wait for 2 minutes (120 seconds)
sleep 120

# Run 'miner' process with nohup and output to miner.logs
nohup ./solo_mining.sh > ~/miner.logs 2>&1 &

# Output success message
echo "Setup complete. 'node' and 'miner' are running in the background."
