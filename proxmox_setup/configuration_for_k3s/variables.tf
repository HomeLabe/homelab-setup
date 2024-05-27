variable "node_name" {
  description = "Le nom du noeud Proxmox où les VMs seront créées"
  type        = string
  default     = "<YOUR_NODE_NAME>"
}

variable "vm_template" {
  description = "Nom du template VM pour les instances Kubernetes"
  type        = string
  default     = "<NAME_TEMPLATE>"
}

variable "ssh_keys" {
  description = "Clé SSH publique pour l'accès aux VMs"
  type        = string
  default     = "<PATH_SSH>"
}

variable "ciuser" {
  description = "Nom du user pour les instances Kubernetes"
  type        = string
  default     = "<NAME_USER>"
}


