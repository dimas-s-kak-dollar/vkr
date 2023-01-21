#!/bin/bash
env_ips=("192.168.10.100" "192.168.10.101" "192.168.10.102")
current_ips=$(hostname -I)
current_env=0

for i in ${!env_ips[@]}; do
  if [[ $current_ips =~ ${env_ips[$i]} ]]; then
    current_env=$[ $i + 1]
  fi
done


