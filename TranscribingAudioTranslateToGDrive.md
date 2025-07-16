# TranscribingAudioTranslateToGDrive

### `TranscribingAudioTranslateToGDrive` Workflow


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

#### **Example Video**

You can learn more about similar concepts by watching this video:
[https://youtu.be/OiyJKhrVYZs](https://youtu.be/OiyJKhrVYZs)
