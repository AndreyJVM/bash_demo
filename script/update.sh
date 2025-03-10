#!/bin/bash

echo "UPDATE SYSTEM"
sudo apt-get update -y

echo "UPGRADE SYSTEM"
sudo apt-get upgrade -y

echo "AUTOREMOVE SYSTEM"
sudo apt autoremove -y