#!/bin/bash

if [ -d "server" ]; then
    echo "Server already installed!"
    echo "Skipping installation..."
else
    echo "Installing Purpur..."
    mkdir server
    cd server || exit

    echo "Downloading Purpur jar..."
    curl -s -o purpur.jar https://api.purpurmc.org/v2/purpur/1.19.3/1903/download

    echo "Accepting EULA..."
    echo "eula=true" >eula.txt

    echo "Copying server.properties..."
    cp ../templates/server.properties /server

    echo "Copying start.sh..."
    cp ../templates/start.sh /server
    echo "Done!"
fi
