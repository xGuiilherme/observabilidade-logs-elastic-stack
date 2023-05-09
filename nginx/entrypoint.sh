#!/bin/bash

filebeat modules enable nginx
# filebeat setup
service filebeat start
nginx -g 'daemon off;'

# Nesse arquivo ele ativa o modulo do nginx pro filebeat.
# Depois ele cria um setup e vai conectar no Kibana e criar os dashboards
# Depois ele pede pro serviço do filebeat iniciar junto com o nginx.