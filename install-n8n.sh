#!/bin/bash

echo "📦 Updating system..."
sudo apt update && sudo apt upgrade -y

echo "🟢 Installing Node.js v20..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

echo "🔁 Checking Node & npm versions..."
node -v
npm -v

echo "🚀 Installing n8n globally..."
sudo npm install -g n8n

echo "✅ n8n version installed:"
n8n --version

echo "📁 Creating systemd service file for n8n..."
cat <<EOF | sudo tee /etc/systemd/system/n8n.service
[Unit]
Description=n8n Workflow Automation
After=network.target

[Service]
Type=simple
User=$USER
Environment=PATH=/usr/bin:/usr/local/bin
ExecStart=$(which n8n)
Restart=on-failure

[Install]
WantedBy=multi-user.target
EOF

echo "🔄 Reloading systemd and enabling service..."
sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl enable n8n
sudo systemctl start n8n

echo "📡 Checking n8n service status..."
sudo systemctl status n8n --no-pager

echo "🌐 n8n is running! Open your browser at: http://localhost:5678"

