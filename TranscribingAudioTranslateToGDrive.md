# 🎙️ TranscribingAudioTranslateToGDrive

[![Built with n8n](https://img.shields.io/badge/Built%20with-n8n-2088FF?style=for-the-badge&logo=n8n&logoColor=white)](https://n8n.io)
[![Powered by OpenAI](https://img.shields.io/badge/Powered%20by-OpenAI-000000?style=for-the-badge&logo=openai&logoColor=white)](https://openai.com)
[![Uses Google Drive API](https://img.shields.io/badge/Uses-Google%20Drive-34A853?style=for-the-badge&logo=google-drive&logoColor=white)](https://developers.google.com/drive)
[![YouTube](https://img.shields.io/badge/Watch%20Tutorial-YouTube-red?style=for-the-badge&logo=youtube)](https://www.youtube.com/watch?v=OiyJKhrVYZs)

---

### 🔁 A full cycle: **Audio ➝ Text ➝ Translate ➝ Audio ➝ Drive**

This n8n workflow takes an audio file from Google Drive, transcribes it using **OpenAI Whisper**, translates the transcription to **Bengali**, converts it back to **speech**, and uploads the translated audio back to Google Drive.

---

## 📌 Features

- ✅ Download MP3 from Google Drive
- ✅ Transcribe with OpenAI Whisper
- ✅ Translate text to Bengali using GPT
- ✅ Convert Bengali text to voice using OpenAI TTS
- ✅ Upload final audio back to Google Drive

---

## 🛠 Prerequisites

- [n8n](https://n8n.io) instance
- OpenAI API Key
- Google Drive credentials
- Audio file (.mp3) in Drive

---

## ⚙️ Workflow Overview

| Step  | Node                     | Purpose                                         |
|-------|--------------------------|-------------------------------------------------|
| 1️⃣   | Manual Trigger           | Start the workflow manually                     |
| 2️⃣   | Google Drive             | Download source audio                           |
| 3️⃣   | OpenAI Whisper           | Transcribe audio to English text                |
| 4️⃣   | GPT Chat Model           | Translate text to Bengali                       |
| 5️⃣   | Text-to-Speech (TTS)     | Convert Bengali text to speech                  |
| 6️⃣   | Google Drive (Upload)    | Upload final audio to destination folder        |

---

## 🔐 Credential Setup

### ✅ Google Drive API
1. Create OAuth2 credentials from Google Cloud Console
2. Add to n8n: **Google Drive OAuth2 API**
3. Connect your Google account with proper scope access

### ✅ OpenAI API
1. Get API Key from [OpenAI Dashboard](https://platform.openai.com/account/api-keys)
2. Add to n8n under **OpenAI API credentials**

---

## 📽 Demo Video

🎬 Watch full tutorial on YouTube:  
[![YouTube](https://img.shields.io/badge/PlayOwnAi--Watch--Now-red?style=flat-square&logo=youtube)](https://www.youtube.com/watch?v=OiyJKhrVYZs)

---

## 📦 Download Workflow

🧠 [Download Workflow JSON File](https://github.com/matinict/MyN8N/blob/main/TranscribingAudioTranslateToGDrive.json)

📁 Folder Output:  
All translated audio files are saved in your selected Google Drive folder.

---

## 🤝 Need Help?

- 💬 Comment on [YouTube Video](https://www.youtube.com/watch?v=OiyJKhrVYZs)
- 🛠 Create an Issue on [GitHub](https://github.com/matinict/MyN8N)

---

## 🏷 Tags

`n8n` `openai` `gpt` `whisper` `google drive` `bengali translation` `text-to-speech` `automation` `ai audio`

---

