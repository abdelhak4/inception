up:
	docker compose -f ./srcs/docker-compose.yml build
	docker compose -f ./srcs/docker-compose.yml up 

down:
	docker compose  -f ./srcs/docker-compose.yml down
	sudo rm -rf ~/data/wordpress/* ~/data/mysql/*
	docker volume rm srcs_mariadb_data srcs_wordpress_data
	docker system prune -f
image:
	docker images 
