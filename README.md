# WireGuard-VPN-Secure-Edge-Gateway
wireguard-nginx-gateway/
├── docker-compose.yml       # File chạy WireGuard và Nginx (nếu có)
├── nginx/
│   └── default.conf         # File cấu hình Reverse Proxy của Nginx
├── scripts/
│   └── generate-client.sh   # File Bash script tự động tạo file cấu hình cho user
└── README.md                # FILE QUAN TRỌNG NHẤT (Sẽ nói ở bước 2)
## Features

- All-in-one: WireGuard + Web UI.
- Easy installation, simple to use.
- List, create, edit, delete, enable & disable clients.
- Show a client's QR code.
- Automated configuration with bash script.

## Installation

This is a quick start guide to get you up and running with WireGuard VPN.

### 1. Install Docker

If you haven't installed Docker yet, install it by running as root:

```shell
curl -sSL https://get.docker.com | sh
exit
```
### 2. Run WireGuard VPN

The easiest way to run WireGuard Easy is with Docker Compose.

Just follow [these steps](https://wg-easy.github.io/wg-easy/latest/examples/tutorials/basic-installation/) in the detailed documentation.

You can also install WireGuard Easy with the [docker run command](https://wg-easy.github.io/wg-easy/latest/examples/tutorials/docker-run/) or via [podman](https://wg-easy.github.io/wg-easy/latest/examples/tutorials/podman-nft/).

Now [setup a reverse proxy](https://wg-easy.github.io/wg-easy/latest/examples/tutorials/basic-installation/#setup-reverse-proxy) to be able to access the Web UI securely from the internet. This step is optional, just make sure to follow the guide [here](https://wg-easy.github.io/wg-easy/latest/examples/tutorials/reverse-proxyless/) if you decide not to do it.

## Roadmap
- Integrate CI/CD pipeline using GitHub Actions to automatically check scripts for errors.


And log in again.

