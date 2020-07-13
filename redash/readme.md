# Connection #

Redash available at localhost:5000

Before first `sudo docker-compose up` create database:
```
sudo docker-compose run --rm server create_db
```

# Paths #

/app/bin/docker-entrypoint - enrypoint, may be replaced by one from https://github.com/getredash/redash

# Services #

* server
* scheduler
* worker

Any of them may be replaced with dev_server, dev_scheduler, dev_worker for debugging. Dev_scheduler worked only with external docker-entrypoint.