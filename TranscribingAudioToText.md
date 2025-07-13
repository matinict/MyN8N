
```markdown
# 🎙️ TranscribingAudioToText – n8n Audio Transcription Workflow

[![Built with n8n](https://img.shields.io/badge/Built%20with-n8n-208ec6?logo=n8n&logoColor=white)](https://n8n.io)
[![OpenAI Whisper](https://img.shields.io/badge/Transcription-Whisper–OpenAI-lightgrey?logo=openai)](https://platform.openai.com)
[![Google Drive](https://img.shields.io/badge/Storage-Google%20Drive-blue?logo=google-drive)](https://drive.google.com)
[![YouTube Demo](https://img.shields.io/badge/Watch%20on-YouTube-red?logo=youtube)](https://www.youtube.com/watch?v=zj1ZWO50wbY)

Automate audio transcription using **Google Drive** and **OpenAI Whisper**, then save the text output back to Drive—all powered by **n8n**.

---

## 🚀 Workflow Steps

1. **Manual Trigger** – Start the workflow manually (“Test workflow” click)  
2. **Google Drive** – Download the audio file from a specified Google Drive link or ID  
3. **OpenAI Transcribe** – Use Whisper model to convert audio to text :contentReference[oaicite:1]{index=1}  
4. **Convert to File** – Generate a `.txt` file from the transcribed text  
5. **Google Drive Upload** – Save the `.txt` transcript to a specified Drive folder  

---

## ⚙️ Setup & Credentials

- **Google Drive OAuth2** – Allows read/write access to your Drive  
- **OpenAI API key** – Used by the “OpenAI Whisper” node for transcription

---

## 📁 Node Configuration Summary

| Node               | Purpose                                                      |
|--------------------|--------------------------------------------------------------|
| Manual Trigger     | Initiates the workflow manually                              |
| Google Drive       | Downloads the audio file using a Drive link or file ID      |
| OpenAI (Whisper)   | Transcribes audio to text                                    |
| Convert to File    | Converts returned text into a `.txt` file                    |
| Google Drive 1     | Uploads the transcript file to a specific Drive folder       |

---

## 📘 How to Use

1. Import workflow JSON into your n8n instance  
2. Set up **Google Drive** and **OpenAI** credentials  
3. Specify the **audio file link or ID** in the Drive node  
4. Choose a **destination folder** for transcripts  
5. Run “Test workflow” and check the Drive folder for the `.txt` file

---

## 🎥 Video Demo

Watch the full walkthrough here:  
[![](https://img.shields.io/badge/YouTube–Transcribe%20Audio%20to%20Text-red?logo=youtube)](https://www.youtube.com/watch?v=zj1ZWO50wbY) :contentReference[oaicite:2]{index=2}

---

## 💡 Use Cases

- 📋 Meeting transcripts  
- 🎧 Podcast/audio archiving  
- 🎙️ Voice memo logging  
- 📚 Audio-to-text automation pipelines

---

## 🔗 Resources

- 🎙️ [OpenAI Audio (Whisper) docs](https://docs.n8n.io/integrations/builtin/app-nodes/n8n-nodes-langchain.openai/audio-operations/) :contentReference[oaicite:3]{index=3}  
- 📘 [n8n Google Drive node docs](https://docs.n8n.io/nodes/n8n-nodes-base.google-drive/)  
- ✔️ Workflow template inspiration: “Use OpenAI to Transcribe Audio + Summarize with AI + Save to Google Drive” :contentReference[oaicite:4]{index=4}

---


