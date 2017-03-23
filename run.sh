#!/bin/sh

python manage.py runserver --host 0.0.0.0 --port 5000
#mkidr -p $HOME/run/celery

# celery worker -A celery_worker.celery --loglevel=info --broker=amqp://guest:guest@$RABBITMQ_SERVICE_SERVICE_HOST:5672//

celery multi start worker1 -A celery_worker.celery --broker=amqp://guest:guest@$RABBITMQ_SERVICE_SERVICE_HOST:5672// # --pidfile="$HOME/run/celery/%nn.pid" --logfile="$HOME/log/celery/%n%I.log
