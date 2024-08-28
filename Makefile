build:
	docker-compose build

build-nc:
	docker-compose build --no-cache

build-progress:
	docker-compose build --no-cache --progress=plain

down:
	docker-compose down --volumes

run:
	make down && docker-compose up

run-d:
	make down && docker-compose up -d

run-scale:
	make down && docker-compose up --scale spark-worker=$(workers)

stop:
	docker-compose stop

submit:
	docker exec spark-spark-1 /opt/bitnami/spark/bin/spark-submit --master spark://spark:7077 --deploy-mode client /opt/spark-apps/$(app)

copy-script:
	docker cp $(app) spark-spark-1:/opt/spark-apps/$(app)

copy-data:
	docker cp $(data) spark-spark-1:/opt/spark-data/$(data)