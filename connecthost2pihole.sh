#!/bin/bash
sudo ip link add mynet-shim link eno1 type macvlan  mode bridge
sudo ip addr add 192.168.88.8/24 dev mynet-shim
sudo ip link set mynet-shim up
sudo ip route add 192.168.88.2 dev mynet-shim

