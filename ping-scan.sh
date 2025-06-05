#!/bin/bash
# ⚡ Simple Ping Scanner by Ilyase

echo "Enter IP base (e.g., 192.168.1):"
read base

echo "Scanning $base.1 to $base.20 ..."

for i in {1..20}; do
  ip="$base.$i"
  ping -c 1 -W 1 "$ip" > /dev/null && echo "[+] $ip is UP" &
done

wait
echo "Scan complete."
