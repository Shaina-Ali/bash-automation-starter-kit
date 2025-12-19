#!/bin/bash
echo "--- État de la mémoire RAM ---"
free -h
echo "--- Occupation disque ---"
df -h | grep '^/dev/'
