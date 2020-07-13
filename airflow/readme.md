# Connection #

Airflow is available at localhost:8080

# Paths #

* /root/airflow/dags
* /root/airflow/test
* /root/airflow/plugins

_test and plugins may be removed from compose and dockerfile_

# Configs #

## airflow.cfg ##

__Path:__ /root/airflow/airflow.cfg

__Changed:__

load_examples = False

sql_alchemy_conn = postgresql://user:pass@backend_db:5432/db

_default sql_alchemy_conn (SQLite) is commented_

## supervisord.conf ##

Starts both _airfow schedurler_ and _airflow server_ as daemons

## start&#46;sh ##

Inits database before running daemons

## requirements.txt ##

psycopg2 required only for postgres