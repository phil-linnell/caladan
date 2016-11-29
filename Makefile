project_name := caladan
project_namespace := phillinnell/$(project_name)

DOCKER := docker

.PHONY: \
  app-rm \
  app-build \

create:
	$(DOCKER) build -t $(project_namespace) .

spin:
	$(DOCKER) run -d --name $(project_name) $(project_namespace)

rm:
	@$(DOCKER) rm -vf $(project_name)

inside:
	$(DOCKER) run --rm -it $(project_namespace) bash

start:
	$(DOCKER) run -p 10191:8080 $(project_namespace) npm start
