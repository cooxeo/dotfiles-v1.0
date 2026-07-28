#!/bin/bash

IFACE="wg0"

if ip link show "$IFACE" >/dev/null 2>&1; then
    echo '{"text":"󰕥","class":"connected","tooltip":"WireGuard Connected"}'
else
    echo '{"text":"󰦞","class":"disconnected","tooltip":"WireGuard Disconnected"}'
fi
