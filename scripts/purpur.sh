#!/bin/bash

# check if pupur.jar exists in server folder

echo "creating server folder..."
mkdir server
cd server || exit

if [ -f "purpur.jar" ]; then
    echo "Purpur.jar already installed!"
    echo "Skipping installation..."
else
    echo "Installing Purpur..."

    echo "Downloading Purpur jar..."
    curl -s -o purpur.jar https://api.purpurmc.org/v2/purpur/1.19.3/1903/download

fi

echo "Accepting EULA..."
echo "eula=true" >eula.txt

echo "Copying server.properties..."
cp ../templates/server.properties .

echo "Copying server.sh..."
cp ../templates/server.sh .
echo "Done!"

# setting executable permissions for server.sh and purpur.jar
echo "Setting executable permissions..."
chmod +x server.sh
chmod +x purpur.jar

# Download plugins
echo "Downloading plugins..."

# Create plugins folder
echo "Creating plugins folder..."
mkdir plugins

cd plugins || exit

echo "Downloading LetMeDespawn..."
# Download LetMeDespawn with wget
wget https://cdn.modrinth.com/data/vE2FN5qn/versions/kyd9MmX5/lmd-1.19.2-1.0-bukkit-paper.jar

echo "Downloading Tree Feller..."
wget https://github.com/ThizThizzyDizzy/tree-feller/releases/download/v1.19.3/TreeFeller-1.19.3.jar

echo "Downloading Scythe..."
wget https://cdn.modrinth.com/data/SiaCYfuX/versions/Yp50ZsIb/Scythe-3.1.jar
