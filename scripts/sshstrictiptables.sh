iptables -A INPUT -p tcp -m tcp --dport 22345 -m tcp -m state --state NEW -m recent --set --name SSH --rsource

iptables -A INPUT -p tcp -m tcp --dport 22345 -m recent --update --seconds 120 --hitcount 5 --rttl --name SSH --rsource -j REJECT --reject-with icmp-host-prohibited

iptables -A INPUT -p tcp -m tcp --dport 22345 -j ACCEPT
