default:
	@echo "Building \"Dockerfile\" with tag \"gosk_project\""
	docker build -f . -t gosk_project .

clean: stop
	@echo "Cleaning up process"
	rm -f out
	docker system prune -f
	docker volume prune -f

start: default
	@echo "Running containers"
	docker-compose up

stop:
	docker-compose down
