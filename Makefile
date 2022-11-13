all: init up

init:
	# ========= create needed directories =========
	[ -d "./wp-app" ] || mkdir -p "./wp-app"
	[ -d "./wp-data" ] || mkdir -p "./wp-data"
	[ -f "./.env" ] || cp .env.dev .env

up:
	docker compose up -d

stop:
	docker compose stop

down:
	docker compose down

destroy:
	docker compose down -v --remove-orphans
