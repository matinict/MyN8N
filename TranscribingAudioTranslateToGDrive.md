# 🎙️ TranscribingAudioTranslateToGDrive

This n8n workflow takes an **audio file from Google Drive**, transcribes it using **OpenAI Whisper**, translates the transcription to **Bengali**, converts the translation back to **speech**, and finally **uploads the translated audio** back to Google Drive.

[![Built with n8n](https://img.shields.io/badge/Built%20with-n8n-2088FF?style=for-the-badge&logo=n8n&logoColor=white)](https://n8n.io)
[![Powered by OpenAI](https://img.shields.io/badge/Powered%20by-OpenAI-000000?style=for-the-badge&logo=openai&logoColor=white)](https://openai.com)
[![Uses Google Drive API](https://img.shields.io/badge/Uses-Google%20Drive-34A853?style=for-the-badge&logo=google-drive&logoColor=white)](https://developers.google.com/drive)
[![YouTube](https://img.shields.io/badge/Watch%20Tutorial-YouTube-red?style=for-the-badge&logo=youtube)](https://www.youtube.com/watch?v=OiyJKhrVYZs)


> 🔁 A full cycle: **Audio ➝ Text ➝ Translate ➝ Audio ➝ Drive**

---

## 📌 Features

- ✅ Download MP3 from Google Drive
- ✅ Transcribe with OpenAI Whisper
- ✅ Translate text to Bengali using GPT
- ✅ Convert Bengali text to voice using OpenAI TTS
- ✅ Save final audio file back to Google Drive

---

## 🛠 Prerequisites

- [n8n](https://n8n.io) installed and running
- OpenAI account + API key
- Google Drive credentials with access to source/destination folders

---

## ⚙️ Workflow Overview

1. **Manual Trigger**  
   Starts the workflow manually for testing.

2. **Google Drive (Download)**  
   Downloads the original `.mp3` audio file using its File ID.

3. **OpenAI Whisper**  
   Transcribes the audio to English text.

4. **OpenAI Chat Model**  
   Translates the English text into Bengali using GPT.

5. **OpenAI Text-to-Speech (TTS)**  
   Converts the Bengali translation into audio (Nova voice).

6. **Google Drive (Upload)**  
   Uploads the final Bengali audio to a selected Drive folder.

---

## 🔐 Credentials Setup

### Google Drive OAuth2
- Go to `Credentials` in n8n
- Add new `Google Drive OAuth2 API`
- Grant required Drive permissions

### OpenAI API
- Get your API Key from [platform.openai.com](https://platform.openai.com/account/api-keys)
- Create credential in n8n under **OpenAI API**

---

## 📁 File Structure

| Node               | Function                                      |
|--------------------|-----------------------------------------------|
| Manual Trigger     | Starts the workflow                           |
| Google Drive       | Downloads the original `.mp3`                 |
| OpenAI Whisper     | Transcribes audio to English text             |
| GPT Chat Model     | Translates text to Bengali                    |
| TTS Node           | Converts translated text to audio             |
| Google Drive (2nd) | Uploads final `.mp3` to target folder         |

---

## 📽 Demo Video

🎬 [Watch on YouTube](https://www.youtube.com/watch?v=OiyJKhrVYZs)  
🧠 Channel: [@PlayOwnAi](https://www.youtube.com/@PlayOwnAi)

---

## 📦 Download Workflow

You can download the full workflow JSON here:

👉 [Download from GitHub](https://github.com/matinict/MyN8N/blob/main/TranscribingAudioTranslateToGDrive.json)

---

## ❓ Need Help?

- Comment on the [YouTube video](https://www.youtube.com/watch?v=OiyJKhrVYZs)
- Or raise an issue in the [GitHub repo](https://github.com/matinict/MyN8N)

---

## 📌 Tags

`n8n` `openai` `gpt` `whisper` `google drive` `bengali translation` `text-to-speech` `audio transcription` `workflow automation`

---

