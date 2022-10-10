#!/bin/bash

cd /var/partytide-classic
sudo docker compose stop -t 90
sudo docker compose up partytide-classic-server --build --remove-orphans -d
