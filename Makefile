SHELL:=/bin/bash

# ---------------------------------------------------------------------------------------------------------------------
# Submodules
# ---------------------------------------------------------------------------------------------------------------------
git-submodule-update:
	git submodule update --init --recursive
git-submodule-update-remote:
	git submodule update --remote --merge
# ---------------------------------------------------------------------------------------------------------------------
# Docker
# ---------------------------------------------------------------------------------------------------------------------
# Java
docker-build-java:
	docker build -f Dockerfile-java -t javulna .
docker-run-java:
	docker run -p 8080:8080 --name javulna javulna
	sleep 10
	curl http://localhost:8080/rest/movie
# React
docker-build-react:
	docker build -f Dockerfile-react -t reactvulna .
docker-run-react:
	docker run -p 4200:4200 --name reactvulna reactvulna
# ---------------------------------------------------------------------------------------------------------------------
# Docker compose
# ---------------------------------------------------------------------------------------------------------------------
docker-compose-up:
	docker-compose up -d
docker-compose-down:
	docker-compose down
docker-compose-logs:
	docker-compose logs -f
docker-compose-clean:
	docker-compose down -v --rmi all --remove-orphans