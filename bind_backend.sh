#!/bin/sh
sudo sed -i 's/localhost/'"$Backend_IP"'/' proxy.config.json