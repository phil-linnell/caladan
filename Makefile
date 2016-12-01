project_name := caladan

app-build:
	docker build -t $(project_name) -f Dockerfile .

app-run:
	docker run --name $(project_name)_app -d -p 8080:8080 $(project_name)

app-rm:
	docker rm -vf $(project_name)_app

app-compile:
	docker exec $(project_name)_app npm run compile

inside-image:
	docker run --rm -it $(project_name) bash

inside-container:
	docker exec -it $(project_name)_app bash
