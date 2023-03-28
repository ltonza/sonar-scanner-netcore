.DEFAULT_GOAL := image

image:
	@echo "building image"
	docker build -t sonar-scanner-netcore .

push:
	@echo "pushing images"
	docker tag sonar-scanner-netcore ltonza/sonar-scanner-netcore:7.0.201-bullseye-slim-amd64
	docker tag sonar-scanner-netcore ltonza/sonar-scanner-netcore:latest
	docker push -a ltonza/sonar-scanner-netcore

clean:
	@echo "cleaning images"
	docker image rm sonar-scanner-netcore

