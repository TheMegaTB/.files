mac_addr="24:DF:6A:34:1F:9B"
bluetoothctl <<< "power on"
if bluetoothctl <<< "info $mac_addr" | grep -qi "Connected: no"; then
      bluetoothctl <<< "connect $mac_addr"
      sleep 10s
      dbus-send --system --type=method_call --dest=org.bluez /org/bluez/hci0/dev_24_DF_6A_34_1F_9B org.bluez.Network1.Connect string:'nap'
      gksu -- sh -c "dhcpcd bnep0; dhcpcd enp0s20f0u6"
else
      bluetoothctl <<< "disconnect $mac_addr"
fi
