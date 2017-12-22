build:
	docker build -t caidaoli/drinks .
run:
	docker-compose up -d
clean:
	docker-compose down
test:
	docker run --rm -v ~/docker/drinks/local:/app -v ~/docker/drinks/odbc.ini:/etc/odbc.ini -v ~/docker/drinks/odbcinst.ini:/etc/odbcinst.ini -it caidaoli/drinks bash
all: build run
.PHONY: build run clean

