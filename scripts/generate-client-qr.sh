#!/bin/bash
# Script tự động hóa hiển thị QR Code cho cấu hình WireGuard Client 

CONFIG_DIR = "./wireguard-config"
echo "=================================================="
echo "    WireGuard Automated Client Config Generator   "
echo "=================================================="

# Kiểm tra xem hệ thống đã cài công cụ QR chưa, nếu chưa thì tự cài
if ! command -v qrencode &> /dev/null; then
    echo "[*] Installing qrencode for automated deployment..."
    sudo apt-get update && sudo apt-get install -y qrencode
fi

# Liệt kê danh sách các Peer (Client) đang có trong hệ thống
echo "[+] Available clients in system:"
ls $CONFIG_DIR | grep peer

read -p "Enter the peer name you want to generate QR (e.g., peer1): " PEER_NAME

FILE_PATH = "$CONFIG_DIR/$PEER_NAME/$PEER_NAME.conf"

if [ -f "$FILE_PATH" ]; then
    echo -e "\nSuccess: Showing QR Code for $PEER_NAME. Scan this with ur WireGuard Mobile App:\n"
    qrencode -t ansiutf8 < "$FILE_PATH"
else
    echo " Error: Configuration file for $PEER_NAME not found!"
fi