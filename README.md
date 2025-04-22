# n8n
n8n is an open-source workflow automation tool

      n8n --version
      node -v
      npm -v


## Step 1.1: Install Node.js & npm

      sudo apt update && sudo apt upgrade -y
      curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
      sudo apt-get install -y nodejs

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
      
         





      
## Step 2: Install n8n Globally

    npm install -g n8n
## Step 3: Start n8n Locally

    n8n
## Permissions 0664 for n8n settings
    chmod 600 /home/matin/.n8n/config


## Reinstall n8n properly

      sudo rm /usr/local/bin/n8n


## Problem 

### Problem 1
      sudo systemctl start n8n
      Job for n8n.service failed because of unavailable resources or another system error.
      See "systemctl status n8n.service" and "journalctl -xeu n8n.service" for details.

      Solution:      n8n

      

## Ref
========
https://platform.openai.com/docs/overview
