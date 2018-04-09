#!/bin/bash

count=0
count_a=0

echo "Starting nslookup order and user service"
while true;
do
  sleep 1
  nslookup order-service
  exit_code=$?
  if [ "$exit_code" -ne 0 ];then
  	let count++
  	echo "order-service failed times:$count"
  fi
  nslookup user-service
  exit_codea=$?
  if [ "$exit_codea" -ne 0 ];then
  	let count_a++
  	echo "order-service failed times:$count_a"
  fi
done
