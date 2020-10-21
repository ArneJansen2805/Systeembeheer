iptables -A INPUT -p udp --dport 123 -s 193.191.177.6 -j ACCEPT
iptables -A INPUT -p udp --dport 123 -s 193.191.177.135 -j ACCEPT
iptables -A INPUT -p udp --dport 123 -s 173.249.29.54 -j ACCEPT
ip6tables -A INPUT -p udp --dport 123 -s 2001:6a8:2880:a021:0:0:0:6 -j ACCEPT
ip6tables -A INPUT -p udp --dport 123 -s 2a02:c207:1:3259:1::1 -j ACCEPT
iptables -A INPUT -p udp --dport 123 -j DROP
