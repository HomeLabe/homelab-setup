resource "proxmox_vm_qemu" "cloudinit-k3s-master" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = var.node_name
    desc = "Cloudinit Ubuntu"
    count = 2
    onboot = true

    # The template name to clone this vm from
    clone = var.vm_template

    # Activate QEMU agent for this VM
    agent = 0

    os_type = "cloud-init"
    cores = 1
    sockets = 2
    numa = true
    vcpus = 0
    cpu = "host"
    memory = 2048
    name = "k3s-master-1${count.index + 1}"

    cloudinit_cdrom_storage = "local-lvm"
    scsihw   = "virtio-scsi-single" 
    bootdisk = "scsi0"

    disks {
        scsi {
            scsi0 {
                disk {
                  storage = "local-lvm"
                  size = 50
                }
            }
        }
    }

    # Setup the ip address using cloud-init.
    # Keep in mind to use the CIDR notation for the ip.
    ipconfig0 = "ip=192.168.1.2${count.index + 1}/24,gw=192.168.1.254"
    ciuser = var.ciuser
    nameserver = "8.8.8.8"
    sshkeys = <<EOF
votre_cle_ssh_master
    EOF
}

resource "proxmox_vm_qemu" "cloudinit-k3s-worker" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox"
    desc = "Cloudinit Ubuntu"
    count = 2
    onboot = true

    # The template name to clone this vm from
    clone = "ubuntu-cloud"

    # Activate QEMU agent for this VM
    agent = 0

    os_type = "cloud-init"
    cores = 2
    sockets = 2
    numa = true
    vcpus = 0
    cpu = "host"
    memory = 4096
    name = "k3s-worker-1${count.index + 1}"

    cloudinit_cdrom_storage = "local-lvm"
    scsihw   = "virtio-scsi-single" 
    bootdisk = "scsi0"

    disks {
        scsi {
            scsi0 {
                disk {
                  storage = "local-lvm"
                  size = 100
                }
            }
        }
    }

    # Setup the ip address using cloud-init.
    # Keep in mind to use the CIDR notation for the ip.
    ipconfig0 = "ip=192.168.1.1${count.index + 1}/24,gw=192.168.1.254"
    ciuser = var.ciuser
    sshkeys = <<EOF
votre_cle_ssh_worker
    EOF
}
