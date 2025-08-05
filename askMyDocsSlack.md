# 🤖 AskMyDocsSlack – AI-Powered Slack Document Q&A Bot

[![Built with n8n](https://img.shields.io/badge/Built%20with-n8n-208ec6?logo=n8n&logoColor=white)](https://n8n.io)
[![Qdrant Vector DB](https://img.shields.io/badge/Vector%20Store‑Qdrant-blue?logo=qdrant)](https://qdrant.tech)
[![OpenAI Embeddings](https://img.shields.io/badge/Embeddings‑Model-ada‑002-orange?logo=openai)](https://platform.openai.com)
[![GPT‑4o‑Mini](https://img.shields.io/badge/Chat‑Model‑GPT‑4o‑Mini-lightgrey?logo=openai)](https://platform.openai.com)
[![Slack](https://img.shields.io/badge/Slack‑Integration‑Enabled‑slack-blue)](https://slack.com)

AskMyDocsSlack lets you **upload documents to Qdrant** and **query them in Slack**, using **OpenAI embeddings**, **GPT‑4o‑mini**, and n8n's AI trigger flow.

---

## ⚙️ How It Works

1. **Manual Trigger** – Ingest documents into Qdrant using `text-embedding-ada-002`.  
2. **Chat Trigger** – Activate via Slack webhook (`When chat message received`).  
3. **Retrieval Chain**:
   - `Vector Store Retriever` finds relevant chunks.
   - `Question and Answer Chain` generates responses using retrieved context.  
4. **Slack Response** – Sends the AI-generated answer back to Slack via `HTTP Request`.  
  
This flow creates a **Retrieval-Augmented Generation (RAG)** chatbot inside Slack.

---

## 📦 Workflow Nodes

| Node                          | Role                                      |
|------------------------------|-------------------------------------------|
| Manual Trigger               | Insert files into Qdrant collection       |
| Embeddings OpenAI            | Generate text embeddings (Ada‑002)        |
| Text Loader & Splitter       | Load and chunk long documents             |
| Qdrant Vector Store (Insert) | Stores embeddings in Qdrant               |
| Chat Trigger (Webhook)       | Receives Slack chat queries               |
| Vector Store Retriever       | Retrieves top‑K relevant vectors           |
| Question and Answer Chain    | Constructs final response via GPT‑4o‑mini |
| HTTP Request                 | Sends reply back to Slack via webhook     |

---

## 🛠️ Setup & Configuration

- **Set up Qdrant** – Create a collection (e.g. `hrbook`) for document embeddings :contentReference[oaicite:1]{index=1}  
- **Add OpenAI Embedding API Key** – Use `text-embedding-ada-002` model :contentReference[oaicite:2]{index=2}  
- **Slack Integration** – Connect Slack credentials to receive and respond via webhook :contentReference[oaicite:3]{index=3}  

---

## 🧶 Use Cases & Benefits

- ✅ Transform Slack into an AI-powered document assistant  
- ✅ Ideal for **internal knowledge base queries**, onboarding documents, HR manuals  
- ✅ Enables non-technical users to access content through chat

---

## 🎯 Pro Tips

- Use the same Qdrant collection name in both ingestion and retrieval nodes  
- Tune `topK` for relevance or conversation brevity  
- Expand to support multiple file types (PDFs, Google Docs, etc.) easily

---

## 📚 Resources

- 🧠 [n8n Chat Trigger Integration](https://n8n.io/integrations/chat-trigger/) :contentReference[oaicite:4]{index=4}  
- ⚙️ [n8n Qdrant Integration Guide](https://n8n.io/integrations/qdrant-vector-store/) :contentReference[oaicite:5]{index=5}  
- ❓ [Question and Answer Chain Node Docs](https://n8n.io/integrations/retrieval-qanda-chain/) :contentReference[oaicite:6]{index=6}  

---

Would you like:
- 🔄 A fully automated ingestion scheduler?
- 📣 Slack channels support for multiple teams?
- 🧠 Multi-file upload with summary generation?

Let me know how you want to enhance it next! 🚀
