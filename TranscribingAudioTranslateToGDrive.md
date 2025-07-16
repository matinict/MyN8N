# TranscribingAudioTranslateToGDrive

### `TranscribingAudioTranslateToGDrive` Transcription, Translation and Voice Generator with n8n & OpenAI


#### **Workflow Description**

This n8n workflow is designed to handle an audio file from Google Drive. It performs the following steps:
1.  **Downloads** an audio file from a specified Google Drive folder.
2.  **Transcribes** the audio content into text using OpenAI's transcription service.
3.  **Translates** the transcribed text to Bangla using a LangChain LLM chain.
4.  **Converts** the translated text back into an audio file using OpenAI's text-to-speech service.
5.  **Uploads** the new, translated audio file to a different folder in Google Drive.

#### **Technologies Used**

* **n8n:** Workflow automation platform.
* **Google Drive:** Used for storing and retrieving the audio files.
* **OpenAI:** Provides audio transcription and text-to-speech services.
* **LangChain:** Used to manage the language model chain for text translation.

#### **Workflow Steps**

The workflow is a linear process with the following nodes:

* **When clicking ‘Test workflow’:** The starting point of the workflow.
* **Google Drive:** Downloads the audio file `TranscribingEn.mp3`.
* **OpenAI:** Transcribes the audio file into text.
* **Basic LLM Chain:** Translates the transcribed text to Bangla. This node uses the `OpenAI Chat Model` to perform the translation.
* **OpenAI1:** Converts the translated Bangla text back into an audio file.
* **Google Drive1:** Uploads the new audio file with a name prefixed with `bn_` to the `audio` folder in Google Drive.


In this step-by-step tutorial, learn how to create a powerful AI workflow using n8n, OpenAI, and Google Drive. This automation can:

 * Transcribe audio from a Google Drive file
 * Summarize the transcription with OpenAI
 * Translate the summary into Japanese
 * Generate an AI voice from the translated text
 * Upload the final audio file back to Google Drive

 This is an ideal no-code workflow for content creators, educators, YouTubers, or developers working with multilingual voice automation.


00:00 - Intro: Transcribe + Translate + Save Audio
00:30 - Workflow Overview
01:00 - Step 1: Trigger & Download Audio from Google Drive
01:30 - Step 2: Transcribe Audio to Text using OpenAI Whisper
02:10 - Step 3: Translate Text to Bengali using GPT
02:50 - Step 4: Convert Bengali Text to Speech (Text-to-Audio)
03:30 - Step 5: Upload Translated Audio to Google Drive
04:00 - Setting Up OpenAI & Google Drive Credentials
05:00 - Final Workflow Test (Start to Finish)
06:30 - GitHub Download & Support Info
07:00 - Outro & Subscribe to @PlayOwnAi


 What you’ll build:

 * Google Drive file download and upload
 * OpenAI Whisper transcription
 * Summarization using GPT-based models
 * Translation via prompt-based AI interaction
 * Text-to-speech voice generation
 * Full automation using n8n (open source)

 Access the full n8n workflow JSON and clone it to get started fast.

 Source Code:
 [https://github.com/matinict/MyN8N/blob/main/TranscribingAudioTranslateToGDrive.json](https://github.com/matinict/MyN8N/blob/main/TranscribingAudioTranslateToGDrive.json)

 Required Tools:

 * n8n (self-hosted or cloud)
 * Google Drive API Access
 * OpenAI API Key (Whisper + Chat + TTS)
 * Japanese language translation via prompt

 Tags:
 n8n tutorial, openai workflow, audio transcription automation, summarize audio with gpt, translate with ai, generate voice with openai, n8n google drive integration, openai whisper n8n, ai-powered automation, no code audio pipeline, openai tts n8n

#### **Example Video**

You can learn more about similar concepts by watching this video:
[https://youtu.be/OiyJKhrVYZs](https://youtu.be/OiyJKhrVYZs)
