DOMAIN="ngocsonlab"
TOKEN="YOUR_DUCKDNS_TOKEN_HERE"

CURRENT_IP=$(curl -s https://whatsmyip.org | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -n 1)

echo "Update the latest IP address: $CURRENT_IP for domain name $DOMAIN..."
RESPONSE=$(curl -s "https://duckdns.org")

if ["RESPONSE" = "OK"]; then 
    echo "Successfully Update!" 
else 
    echo "DUCKDNS cannot update."
fi

