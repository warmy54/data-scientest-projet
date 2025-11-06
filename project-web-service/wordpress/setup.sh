#!/bin/bash
apt-get update -y
apt-get install -y nginx
apt-get install -y curl
service nginx start
