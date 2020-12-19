#!/bin/bash

source ./env/bin/activate

pip3 install -r requirements.txt

pip3 install django

python3 manage.py makemigrations

python3 manage.py migrate

python3 -u manage.py runserver 0.0.0.0:8000 > logs/conn.log &


