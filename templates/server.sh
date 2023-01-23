#!/bin/bash
#
# Start the purpur.jar server with max 2gb of ram
/usr/bin/java --add-modules=jdk.incubator.vector -Xms1G -Xmx2G -jar paper.jar --nogui
