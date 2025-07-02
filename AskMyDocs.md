# 📘 AskMyDocs

## 🔍 Build an AI RAG Agent Using n8n, OpenAI & Qdrant Vector Store

**AskMyDocs** is a no-code **RAG (Retrieval-Augmented Generation)** application built with **n8n**, enabling you to **chat with your documents** intelligently using **OpenAI's GPT models** and **Qdrant** as a vector database.

This workflow allows you to upload text files (from Google Drive), generate embeddings, store them in a vector store, and run conversational queries via a chatbot powered by GPT.

---

## 🧠 What is AskMyDocs?

AskMyDocs enables you to:

✅ Import documents (TXT format) from Google Drive
✅ Split content into smaller chunks using LangChain’s recursive text splitter
✅ Embed text using OpenAI’s `text-embedding-ada-002` model
✅ Store embeddings in a **Qdrant vector database**
✅ Trigger chat-based questions using n8n's Chat Trigger node
✅ Retrieve relevant document chunks using vector similarity
✅ Use GPT-4 (or GPT-3.5) to answer queries from your documents

This is a **no-code RAG pipeline** that lets you build your own **AI-powered document chatbot**—perfect for HR docs, manuals, research files, training guides, and more.

---

## 🧩 Workflow Components

| Step                   | Description                                         |
| ---------------------- | --------------------------------------------------- |
| 🔹 `Manual Trigger`    | Start workflow manually for testing                 |
| 🔹 `Google Drive`      | Download TXT document from Drive                    |
| 🔹 `Text Splitter`     | Split large documents into 5000-character chunks    |
| 🔹 `OpenAI Embeddings` | Convert text chunks into vector embeddings          |
| 🔹 `Qdrant`            | Store and retrieve embeddings for similarity search |
| 🔹 `Chat Trigger`      | Receive chat input from user                        |
| 🔹 `Retriever + GPT-4` | Use top-matching chunks to generate an AI answer    |

---

## 🚀 Getting Started

### 1. Prerequisites

* [n8n installed](https://docs.n8n.io)
* OpenAI API key
* Qdrant instance (cloud or self-hosted)
* Google Drive API credentials (OAuth2)
* LangChain nodes installed in n8n

### 2. Clone or Import Workflow

🔗 **Workflow JSON**:
[AskMyDocs.json](https://github.com/matinict/MyN8N/blob/main/AskMyDocs.json)

📄 **Video Tutorial**:
[Watch on YouTube](https://youtube.com/@POAiB)

---

## 🗃️ Example Use Cases

* 💼 HR Policy Chatbot
* 📚 Internal Knowledge Base
* 🛠️ Technical Document Q\&A
* 📑 SOP & Training Guide Assistant
* 🧾 Legal or Compliance Document Chat

---

## 🧪 Testing Tips

* Ensure the Google Drive file is in `.txt` format.
* Adjust `chunkSize` and `chunkOverlap` depending on document length.
* Use `gpt-4o-mini` or `gpt-3.5-turbo` for lower-cost querying.
* Use `Qdrant Cloud` or run locally for vector DB.

---

## 📁 File Links

* 🧠 [AskMyDocs.json](https://github.com/matinict/MyN8N/blob/main/AskMyDocs.json) — n8n workflow
* 📘 [AskMyDocs.md](https://github.com/matinict/MyN8N/blob/main/AskMyDocs.md) — this documentation

---

## 🏷️ Keywords (SEO)

```
rag chatbot n8n  
openai qdrant integration  
langchain n8n tutorial  
chat with documents openai  
n8n document question answering  
google drive qdrant rag  
retrieval augmented generation workflow  
n8n vector database embedding  
build ai chatbot from text  
open source no-code rag pipeline  
```

---

## 🙋 Support

Feel free to [create an issue](https://github.com/matinict/MyN8N/issues) or ask your questions on the [YouTube channel](https://youtube.com/@POAiB). PRs and improvements are welcome!

---

