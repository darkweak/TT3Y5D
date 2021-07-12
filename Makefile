.PHONY:

COMMON_BUILD=docker build -f api/Dockerfile -t
APP_NAME=tt3y5d

prepare-service: ## Prepare the service to be deployed
	$(COMMON_BUILD) $(service) --target $(target) ./api
	docker save --output $(service).tar $(service)
	sudo k3s ctr images import /home/sylvain/$(service).tar

exec: ## Exec kubectl action with files
	sudo kubectl $(action) -f $(APP_NAME)-storage.yaml -f $(APP_NAME)-service.yaml -f $(APP_NAME)-secret.yaml -f $(APP_NAME)-deployment.yaml || true

deploy: ## Deploy
	$(MAKE) prepare-service service=$(APP_NAME)-php target=api_platform_php
	$(MAKE) prepare-service service=$(APP_NAME)-api target=api_platform_nginx
	$(MAKE) action=delete
	$(MAKE) action=create
