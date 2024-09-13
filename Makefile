init:
	make build
	make up
	make ros2

build:
	docker compose build

up:
	docker compose up -d

ros2:
	xhost +local:
	docker compose exec ros2 bash
