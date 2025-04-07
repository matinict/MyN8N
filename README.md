# n8n
n8n is an open-source workflow automation tool

## Step 1: Install Node.js & npm

      sudo apt update && sudo apt upgrade -y
      curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
      sudo apt install -y nodejs
      node -v
      npm -v

### Step 1.2 : Create a Systemd Service File
      sudo nano /etc/systemd/system/n8n.service

      [Unit]
      Description=n8n Workflow Automation
      After=network.target
      
      [Service]
      ExecStart=/usr/bin/env node /usr/local/bin/n8n
      Restart=always
      User=matin
      Environment=PATH=/usr/bin:/usr/local/bin
      WorkingDirectory=/home/matin
      
      [Install]
      WantedBy=multi-user.target\

### Step 1.3 :Enable & Start the Service
      sudo systemctl enable n8n
      sudo systemctl start n8n
      sudo systemctl status n8n

      sudo systemctl daemon-reload
      sudo systemctl enable n8n
      sudo systemctl start n8n





      
## Step 2: Install n8n Globally

    npm install -g n8n
## Step 3: Start n8n Locally

    n8n

## Reinstall n8n properly

      sudo rm /usr/local/bin/n8n



      

## Ref
========
