export IP=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null)
