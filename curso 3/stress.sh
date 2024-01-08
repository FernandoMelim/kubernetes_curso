#!/bin/bash
for i in {1..10000}; do
  curl localhost:3000/paciente
  sleep $1
done
