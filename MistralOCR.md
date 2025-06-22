# 🧠 Build Your Own AI-Powered Mistral OCR Integration in n8n

Automate the extraction and understanding of text from images and PDFs using **Mistral OCR** and **Google Gemini**, all inside an **n8n workflow**. This guide walks you through creating a full document processing pipeline, perfect for no-code AI automation.

---

## 🚀 Overview

In this project, we demonstrate how to:

* Trigger a workflow on **form submission**
* Upload a file to **Mistral OCR** via HTTP Request
* Retrieve a **signed URL** to access OCR results
* Extract key information from OCR text
* Analyze the content with **Google Gemini AI**
* Automate the full process in **n8n** with no code

---

## 🧩 Workflow Steps

1. **Form Submission Trigger**
2. **Upload File to Mistral**
3. **Get Signed URL**
4. **Retrieve OCR Results**
5. **Information Extractor**
6. **Google Gemini Chat Model**

---

## 📁 Files & Resources

* 🔗 **n8n Workflow (.json):**
  [MistralOCR.json](https://github.com/matinict/MyN8N/blob/main/MistralOCR.json)

* 📖 **Mistral OCR Docs:**
  [Basic OCR Usage](https://docs.mistral.ai/capabilities/OCR/basic_ocr/)

* 🗝️ **Get Mistral API Key:**
  [Mistral Console](https://console.mistral.ai/api-keys)

> ⚠️ **Note:** Never share your API keys publicly. Use environment variables or `.env` files in production.

---

## 🔧 Example API Request

```http
POST https://api.mistral.ai/ocr
Authorization: Bearer YOUR_API_KEY
Content-Type: application/json
```

---

## 🎥 Video Tutorial

Watch the full video on YouTube:
📺 **[Build Your Own AI-Powered Mistral OCR Integration in n8n](https://www.youtube.com/watch?v=w3qodnA0sL0)**
*(Replace `YOUR_VIDEO_ID` with the actual video ID or full link)*

---

## 🏷️ Tags

`#n8n` `#MistralOCR` `#GeminiAI` `#NoCodeAutomation` `#DocumentAI` `#OCRPipeline` `#AIWorkflow`

---

## 📌 License

This project is released under the MIT License.
Feel free to fork, use, and enhance!

---
