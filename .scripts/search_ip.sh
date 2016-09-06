for a in $(seq 32 39); do
	for i in $(seq 1 254); do
		#echo $i
		./set_school_ip.sh "172.16.$a.$i"
	done
done
