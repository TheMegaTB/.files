GATEWAY="172.16.32.21"
ROUTE="172.16.32.0/21"
IF="br0"
NEW_IP=$1  #"172.16.34.242/21"
OLD_IP=$(ip a | grep "inet 172.16." | awk '{print $2}')

#echo "Deleting old IP ($OLD_IP) and route"
ip addr del $OLD_IP dev $IF >/dev/null 2>&1
ip route del $ROUTE dev $IF >/dev/null 2>&1
ip route del default via $GATEWAY >/dev/null 2>&1

#echo "Adding new ip"
ip addr add $NEW_IP dev $IF >/dev/null 2>&1

#echo "Adding new route"
ip route add $ROUTE dev $IF >/dev/null 2>&1
ip route add default via $GATEWAY >/dev/null 2>&1
#sleep 0.5
echo "$NEW_IP"
echo "------------------------$NEW_IP------------------------------------" >> res.txt 2>&1
timeout 1 sh -c "ping 8.8.8.8 -I $IF >>res.txt 2>&1"
curl google.de --interface $IF --connect-timeout 1 >> res.txt 2>&1
res=$?
if [ $res -eq 0 ]; then
	echo "RECEIVED HTML @ $NEW_IP"
	#echo $NEW_IP >> ip.list
fi
