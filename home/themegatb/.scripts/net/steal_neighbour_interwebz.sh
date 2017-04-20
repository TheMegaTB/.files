ip route add default via 10.0.0.25 dev wlp2s0
echo "nameserver 8.8.8.8" > /etc/resolv.conf
echo "domain fritz.box" >> /etc/resolv.conf
echo "nameserver 10.0.0.1" >> /etc/resolv.conf
echo "nameserver fd00::2665:11ff:fe8a:b525" >> /etc/resolv.conf

service polipo restart
