init:
	# ========= create needed directories =========
	[ -d "./wp-app" ] || mkdir -p "./wp-app"
	[ -d "./wp-data" ] || mkdir -p "./wp-data"

up:
	docker compose up -d

down:
	docker compose stop