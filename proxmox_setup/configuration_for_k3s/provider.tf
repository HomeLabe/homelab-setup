terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc1"
    }
  }
}


provider "proxmox" {
  pm_api_url = "http://<IP_PROXMOX_SERVER>:8006/api2/json"
  pm_api_token_id = "<YOUR_TOKEN_ID>"
  pm_api_token_secret = "<YOUR_TOKEN_SECRET>"
  pm_tls_insecure = true
}

