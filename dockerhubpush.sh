#!/bin/bash
docker system prune
docker build -t munirbahrin/portfolio .
docker push munirbahrin/portfolio
$SHELL