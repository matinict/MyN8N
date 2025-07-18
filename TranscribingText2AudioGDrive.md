# 🎧 TranscribingText2AudioGDrive – AI Text-to-Audio Converter for Drive

[![Built with n8n](https://img.shields.io/badge/Built%20with-n8n-208ec6?logo=n8n&logoColor=white)](https://n8n.io)  
[![OpenAI TTS](https://img.shields.io/badge/Audio%20Generated–OpenAI-lightgrey?logo=openai)](https://platform.openai.com)  
[![Google Drive](https://img.shields.io/badge/Storage-Google%20Drive-blue?logo=google-drive)](https://drive.google.com)

Convert `.txt` documents in a Drive folder into `.mp3` audio files automatically using **n8n**, **Google Drive**, and **OpenAI TTS**.

---

## 🚀 Workflow Overview

1. **Google Drive Trigger** – Monitors a specific folder every minute and fires when a new `.txt` file is created.  
2. **Drive Download** – Downloads the `.txt` content from Google Drive.  
3. **Extract Text** – Reads the raw text from the downloaded file.  
4. **OpenAI TTS Node** – Converts text into speech using OpenAI’s audio synthesis.  
5. **Audio Upload** – Saves the generated audio (`.mp3`) back to a designated Drive folder with the same base filename.

---

## 📁 Folder Setup

- **Input Folder ID**: Where you drop `.txt` files to be processed  
- **Output Folder ID**: Where `.mp3` audio files are saved

---

## ⚙️ Setup & Credentials

- **Google Drive OAuth2**: For reading and writing files  
- **OpenAI API Key**: For Text-to-Speech synthesis

---

## 📝 File Naming

- Converts `"example.txt"` → `"example.mp3"`  
- Customizable via naming expressions in the upload node

---

## 💡 Usage Tips

- Designed for **short to medium-length text** (keep within TTS limits)  
- Drop `.txt` files into the input folder and n8n will do the rest 🪄  
- Great for voice-overs, audio documentation, accessibility aids, etc.

---

## 🔗 Resources

- 🎙️ [OpenAI Audio (TTS) docs](https://platform.openai.com/docs/guides/tts)  
- 📘 [n8n Google Drive Trigger docs](https://docs.n8n.io/nodes/n8n-nodes-base.google-drive-trigger/)  
- 📘 [n8n File Extraction docs](https://docs.n8n.io/nodes/n8n-nodes-base.extract-from-file/)  

---

Would you like this as a downloadable `.md`, or need help adding email or Slack alerts after conversion?🎉
