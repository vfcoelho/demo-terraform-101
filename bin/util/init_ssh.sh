#!/bin/bash

mkdir -p .ssh/
rm -f .ssh/*

ssh-keygen -t rsa -N "" -f .ssh/id_rsa
chmod 400 .ssh/id_rsa
