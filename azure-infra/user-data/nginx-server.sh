#!/bin/bash
apt-get update -y
apt-get install -y nginx
systemctl start nginx
systemctl enable nginx
cat > /var/www/html/index.nginx-debian.html <<EOF
<!DOCTYPE html>
<html>
<head>
<title>Welcome to Azure  Nginx!</title>
</head>
<body>
<h1>Hello from Azure Nginx Server</h1>
</body>
</html>
EOF
systemctl restart nginx
