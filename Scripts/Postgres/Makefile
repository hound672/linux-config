# Make file for Postgresql server
# and psql client

.PHONY: run
run:
	docker run --rm --name PsqlServer -v ~/Projects/Docker/Psql/postgres-data:/var/lib/postgresql/data -p 5432:5432 postgres:11

.PHONY: psql
psql:
	docker exec -it PsqlServer psql -U postgres

.PHONY: bash
bash:
	docker exec -it PsqlServer bash
