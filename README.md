# homelab

self hosted everything bc i hate paying for cloud  
stack: proxmox · ansible · nginx · docker

## hardware

| component | spec |
|---|---|
| CPU | AMD Ryzen 5 5500 |
| RAM | 32GB DDR4 3200MHz |
| Storage | 512GB Nvme + 4TB HDD |
| Network | 1GbE → router, 
|   |   2.5GbE → main PC |
| Hypervisor | Proxmox |

## network

| device | ip | func |
|---|---|---|
| router | 10.10.10.1 | gateway, dhcp, vlans |
| pve | 10.10.10.2 | hypervisor |
| dhcp clients | 10.10.10.1/24 | other devices |

vlan10 `10.10.0.0/16` — all devices and servers  
vlan20 `10.20.1.0/24` — neighbors  
vlan30 `10.30.1.0/24` — IoT

## services

ip formula: proxmox ID `ABC` → `10.10.A.BC`  
IDs divisible by 100 are reserved (network addresses).

### 1XX — core

| service | type | ID | ip |
|---|---|---|---|
| pbs | lxc | 101 | 10.10.1.1 |
| adguard | lxc | 102 | 10.10.1.2 |
| 3x-ui | vm | 104 | 10.10.1.4 |
| docker-core | vm | 105 | 10.10.1.5 |

### 2XX — prod

| service | type | ID | ip |
|---|---|---|---|
| torrent | lxc | 202 | 10.10.2.2 |

### legacy

| service | type | ID | ip |
|---|---|---|---|
| obsidian-sync | vm | 112 | 10.10.100.12 |
| monitoring | lxc | 404 | 10.10.4.4 |
| wings (pelican) | lxc | 403 | 10.10.4.3 |




## structure

```
homelab/
  README.md
  proxmox/
    main_template_spec.md
    hardware.md
  network/
    topology.md
    vlans.md
    addressing.md
  services/
    core.md
    prod.md
    test.md
  ansible/
  docs/
    decisions.md
```
