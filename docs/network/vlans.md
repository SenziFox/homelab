# vlans

router: xiaomi ax3000t running openWrt  
Interface: `br-lan.10 / br-lan.20 / br-lan.30`

| vlan | subnet | gateway | wifi | purpose |
|---|---|---|---|---|
| 10 | 10.10.0.0/16 | 10.10.10.1 | senzifox_network (5G) | personal devices + servers |
| 20 | 10.20.1.0/24 | 10.20.1.1 | Network (2.4G/5G) | neighbors |
| 30 | 10.30.1.0/24 | 10.30.1.1 | IoT / IoT5G | smart home devices |