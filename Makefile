.PHONY:

deploy: ## Deploy
	docker build -f api/Dockerfile -t tt3y5d
	kubectl create -f tt3y5d-deployment.yaml -f tt3y5d-service.yaml
