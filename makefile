clear:
	clear

start: clear
	server/server.sh

server: clear
	scripts/purpur.sh

rimraf: clear
	scripts/rimraf.sh

nomad: clear
	sudo nomad agent -dev -bind 0.0.0.0

lint: clear
	nomad job validate mc-purpur.hcl
