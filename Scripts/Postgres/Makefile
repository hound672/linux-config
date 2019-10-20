# Make file for Postgresql server
# and psql client

.PHONY: run
run:
	docker run --rm --name PsqlServer --volume ~/Projects/Docker/Psql/postgresql:/var/lib/postgresql -p 5432:5432 postgres:11

.PHONY: psql
psql:
	docker exec -it PsqlServer psql -U postgres

