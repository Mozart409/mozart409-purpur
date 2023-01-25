clear:
	clear

start: clear
	server/server.sh

server: clear
	scripts/purpur.sh

rimraf: clear
	scripts/rimraf.sh

nomad: clear
	nomad agent -dev

lint: clear
	nomad job validate purpur.hcl