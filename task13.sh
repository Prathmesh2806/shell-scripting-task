#!/bin/bash
read -p "Domain name" DOMAIN
DIR="/var/www/$DOMAIN"
CONF="/etc/httpd/conf.d/$DOMAIN.conf"
mkdir -p "$DIR"
echo "$DOMAIN is live" > "$DIR/index.html"
cat > "$CONF" <<EOF
<VirtualHost *:80>
    ServerName $DOMAIN
    DocumentRoot $DIR
</VirtualHost>
EOF
systemctl reload httpd
echo "$DOMAIN virtual host created"