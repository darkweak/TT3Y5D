.PHONY:

COMMON_BUILD=docker build -f api/Dockerfile -t

deploy: ## Deploy
	$(COMMON_BUILD) tt3y5d-php --target api_platform_php ./api
	$(COMMON_BUILD) tt3y5d-api --target api_platform_nginx ./api
	kubectl create -f tt3y5d-deployment.yaml -f tt3y5d-service.yaml
