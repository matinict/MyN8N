# n8n
n8n is an open-source workflow automation tool

      n8n --version
      node -v
      npm -v


## Step 1.1: Install Node.js & npm

      sudo apt update && sudo apt upgrade -y 
      # curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
      sudo apt-get install -y nodejs
      npm install -g npm@11.3.0
      sudo apt install npm
      #NVM which versions of Node are available
      nvm list-remote
      nvm install v20.18.0
      nvm list
      
      node -v
      npm -v

### Step 1.2 : Install  n8n 

      npm install -g n8n
      #Run localy
      n8n      
      #Editor is now accessible via:
      http://localhost:5678   
      

### Step 1.3 :Enable & Start the Service
      sudo systemctl enable n8n
      sudo systemctl start n8n
      sudo systemctl status n8n

      sudo systemctl daemon-reload
      sudo systemctl enable n8n
      sudo systemctl start n8n

      sudo nano /etc/systemd/system/n8n.service
            [Unit]
            Description=n8n Workflow Automation
            After=network.target
            
            [Service]
            Type=simple
            User=matin
            Environment=PATH=/usr/bin:/usr/local/bin
            Environment=NODE_ENV=production
            Environment=N8N_RUNNERS_ENABLED=true
            WorkingDirectory=/home/matin
            ExecStart=/usr/bin/env n8n
            Restart=always
            RestartSec=10
            
            [Install]
            WantedBy=multi-user.target

      sudo systemctl daemon-reexec
      sudo systemctl daemon-reload
      sudo systemctl restart n8n
      sudo systemctl status n8n
      sudo systemctl enable n8n

  



## Uninstall  n8n properly
      sudo npm uninstall -g n8n
      sudo systemctl stop n8n
      sudo systemctl disable n8n
      sudo rm /etc/systemd/system/n8n.service
      sudo systemctl daemon-reload
      sudo rm -rf ~/.n8n
      sudo rm -rf /home/n8n
      sudo rm /usr/local/bin/n8n

      sudo rm -rf /usr/local/bin/node
      sudo rm -rf /usr/local/bin/npm
      sudo rm -rf /usr/local/include/node
      sudo rm -rf /usr/local/lib/node_modules
      sudo rm -rf ~/.npm

      
      ## Uninstall  node & nvm  if needed
      
      sudo apt remove nodejs
      sudo apt purge nodejs
      sudo apt autoremove
      nvm deactivate
      node -v
      npm -v
      nvm list
      nvm uninstall 20.19.0
      rm -rf ~/.nvm


## Ngrok: Install ngrok Local Machine

      wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-stable-linux-amd64.zip
      unzip ngrok-stable-linux-amd64.zip
      sudo mv ngrok /usr/local/bin      
      ngrok version    
      
      ngrok config add-authtoken 30LtkkFGtTVD6hTSlasRFahVbez_GyYV86bbbat8szsCdE2G
      ngrok http http://localhost:8080
      ngrok http http://localhost:5678            
      
      https://df613554f76e.ngrok-free.app/webhook-name

      
      
## Problem 
      
## Problem 1- Permissions 0664 for n8n settings
     chmod 600 /home/matin/.n8n/config
 

### Problem 2:
      sudo systemctl start n8n
      Job for n8n.service failed because of unavailable resources or another system error.
      See "systemctl status n8n.service" and "journalctl -xeu n8n.service" for details.

      Solution:      n8n

      

## Ref
========
https://platform.openai.com/docs/overview
