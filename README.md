# WireGuard-VPN-Secure-Edge-Gateway

## Overview
A robust, secure, and automated Remote Access VPN gateway built on enterprise virtualization standards. This project integrates WireGuard VPN with Nginx Reverse Proxy and Dynamic DNS (DuckDNS), deployed on an Ubuntu Server cluster managed via Proxmox VE (KVM-based hypervisor).
## System Architecture

[Internet Traffic]
│
├──► [DuckDNS] (Dynamic IP Resolution)
│
▼
[Proxmox VE (KVM Hypervisor)]
│
└──► [Ubuntu Server VM]
│
├──► [Nginx Reverse Proxy] (Port 80/443) ──► [Internal Web Services]
└──► [WireGuard VPN Gateway] (Port 51820) ──► [Secure Subnets (10.0.0.0/24)]

## Features

* **Enterprise Virtualization:** Provisioned and managed production-ready Ubuntu Server VMs within a Proxmox VE (KVM) environment.
* **High-Performance VPN:** Deployed WireGuard supporting up to 15+ concurrent users with optimized network throughput.
* **Dynamic DNS Integration:** Configured DuckDNS to automatically update the gateway's changing public IP, ensuring 100% connectivity uptime.
* **Reverse Proxy & SSL:** Utilized Nginx as a Reverse Proxy with SSL/TLS termination to securely route external traffic to internal web services.
* **Advanced Security:** Implemented strict firewall rules via iptables/nftables and NAT policies for total traffic isolation between subnets.
* **Infrastructure Automation:** Developed Bash scripts to fully automate client configuration generation and peer profile management.

# 🛠️ Tech Stack & Tools
* **Virtualization & OS:** Proxmox VE (KVM), Ubuntu Server
* **Network & Security:** WireGuard, Nginx, iptables, nftables, DuckDNS
* **Automation & DevOps:** Bash Scripting, Docker, Docker-Compose

## 📂 Project Structure
* `nginx/default.conf` - Nginx reverse proxy and server block configurations.
* `scripts/duckdns-update.sh` - Automated Bash script for peer and keys generation.
* `docker-compose.yml` - Multi-container setup for easy environment reproduction.
## Future Roadmap (Work in Progress)

* [ ] Integrate CI/CD pipelines via GitHub Actions to automate linting for Bash scripts.
* [ ] Implement Prometheus & Grafana to monitor VPN traffic metrics and server resource usage.

