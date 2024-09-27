#!/bin/bash

finish () {
  for conf in /etc/wireguard/wg*.conf;
  do
    wg-quick down "${conf}"
  done
  exit 0
}
trap finish SIGTERM SIGINT SIGQUIT

for conf in /etc/wireguard/wg*.conf;
do
    wg-quick up "${conf}"
done

sleep infinity &

wait $!
