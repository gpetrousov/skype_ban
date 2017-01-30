# With these rules skype will not be able to connect to it's auth servers, preventing the annoying neighbor from making skype calls at 3 A.M.

# Output chain does not affect skype.
for ip in 111.221.74.0/24 111.221.77.0/24 157.55.130.0/24 157.55.235.0/24 157.55.56.0/24 157.56.52.0/24 213.199.179.0/24 64.4.23.0/24 65.55.223.0/24; do iptables -A OUTPUT -d $ip -j DROP; done

# Input chain must be the reason it does not connect.
for ip in 111.221.74.0/24 111.221.77.0/24 157.55.130.0/24 157.55.235.0/24 157.55.56.0/24 157.56.52.0/24 213.199.179.0/24 64.4.23.0/24 65.55.223.0/24; do iptables -A INPUT -d $ip -j DROP; done

# Not really sure.
for ip in 111.221.74.0/24 111.221.77.0/24 157.55.130.0/24 157.55.235.0/24 157.55.56.0/24 157.56.52.0/24 213.199.179.0/24 64.4.23.0/24 65.55.223.0/24; do iptables -A FORWARD -d $ip -j DROP; done

# Not really sure
for ip in 111.221.74.0/24 111.221.77.0/24 157.55.130.0/24 157.55.235.0/24 157.55.56.0/24 157.56.52.0/24 213.199.179.0/24 64.4.23.0/24 65.55.223.0/24; do iptables -A FIREWALL -d $ip -j DROP; done
