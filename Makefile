project_name := caladan

app-build:
	docker build -t $(project_name) -f Dockerfile.spa .

app-run:
	docker run --name $(project_name) -d -p 8080:8080 $(project_name)

app-rm:
	docker rm -vf $(project_name)

app-compile:
	docker exec -t $(project_name) npm run compile

inside-image:
	docker run --rm -it $(project_name) bash

inside-container:
	docker exec -it $(project_name) bash


## Shorthand ##
setup: app-build
run: app-run
fresh: app-rm app-run
compile: app-compile
peek: inside-container
