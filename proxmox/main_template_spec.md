CPU: 2 cores (host)
RAM: 2 GB
Machine: q35
Disk: 3 GB (scsi0, raw, discard=on, ssd=1)
Net: virtio (vmbr0)
Cloud-Init: user: senzi, ip: dhcp, agent: 1, vga: serial0

# /etc/pve/qemu-server/9000.conf
agent: enabled=1
bios: seabios
boot: order=scsi0
cipassword: <hashed_password>
ciuser: senzi
cores: 2
cpu: host
ide2: local:9000/vm-9000-cloudinit.qcow2,media=cdrom
ipconfig0: ip=dhcp
machine: q35
memory: 2048
meta: creation-qemu=10.1.2,ctime=1769603205
name: debian-13-template
net0: virtio=BC:24:11:66:4A:98,bridge=vmbr0
ostype: l26
scsi0: local:9000/base-9000-disk-0.raw,discard=on,size=3G,ssd=1
scsihw: virtio-scsi-pci
serial0: socket
smbios1: uuid=1f64409e-4949-4457-9262-d3162ff6292b
sshkeys: <ssh keys senzi_main pve_host_access ansible_automation emergency_recovery>
template: 1
vga: serial0
vmgenid: 45784587-5555-4f4b-a94a-5ee33a17baa2