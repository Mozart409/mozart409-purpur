clear:
	clear

start: clear
	server/server.sh

server: clear
	scripts/purpur.sh

rimraf: clear
	scripts/rimraf.sh