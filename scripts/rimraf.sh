#!/bin/bash

# check if server directory exists if yes delete it
if [ -d "server" ]; then
    echo "Server already installed!"
    echo "Deleting server directory..."
    rm -rf server
    echo "Done!"
fi
