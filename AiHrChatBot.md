# 🤖 AiHrChatBot – n8n HR Chatbot with OpenAI & Pinecone

This is an `n8n` automation workflow for building an intelligent **AI-powered HR chatbot** using OpenAI (GPT-4o), LangChain components, and Pinecone vector database. It enables real-time handling of employee or candidate questions with contextual memory and vector-based knowledge search.

---

## 🚀 Features

- 💬 Responds to chat messages via webhook
- 🧠 Context-aware replies with memory window
- 📚 Vector-based retrieval from HR documents using Pinecone
- 🔍 Embeds documents with OpenAI for semantic search
- 🔗 Built with LangChain components inside n8n

---

## 🧩 Workflow Overview

```

When Chat Message → AI Agent (LangChain)
↳ OpenAI GPT-4o (language model)
↳ Memory Buffer (context window)
↳ Tool: Vector Store QA
↳ Pinecone vector search
↳ OpenAI Embeddings
↳ OpenAI Chat Model for Answer Generation

```

### 🧠 Nodes Used

| Node                          | Description                                     |
|------------------------------|-------------------------------------------------|
| `When chat message received` | Triggers when a user sends a message            |
| `AI Agent`                   | LangChain-based logic to route input            |
| `OpenAI Chat Model`          | Primary GPT-4o model for reasoning              |
| `Simple Memory`              | Stores recent conversation context              |
| `Tool: Vector Store QA`      | Answers from vector database using Pinecone     |
| `Pinecone Vector Store`      | Retrieves top-matching documents                |
| `Embeddings OpenAI`          | Embeds input into vectors for Pinecone          |
| `OpenAI Chat Model1`         | Answers vector-based questions (QA chain)       |

---

## 🧠 Setup Instructions

### 1. Requirements

- n8n instance (self-hosted or cloud)
- OpenAI API key
- Pinecone API key
- LangChain-compatible nodes installed

### 2. Clone or Import Workflow

🔗 **Workflow JSON**:
[AiHrChatBot.json](https://github.com/matinict/MyN8N/blob/main/AiHrChatBot.json)

📄 **Video Tutorial**:
[Watch on YouTube]([https://youtu.be/dE1JZut2kvk](https://youtu.be/KVytO_9WlSg))

[YouTube Channel](https://youtube.com/@PlayOwnAi)


### 3. Credentials Setup

- **OpenAI API**: Create and connect a credential named `OpenAi account 2`
- **Pinecone API**: Connect with credential named `PineconeApi account 6`

### 4. Pinecone Index Configuration

Make sure your Pinecone index is created and named `aihr`  
Namespace: `AiHrAgent`

---

## 📂 Vector Store Usage

To ingest HR documents:

1. Chunk your PDF or text files.
2. Embed them using the `Embeddings OpenAI` node.
3. Store them in the connected `Pinecone Vector Store`.

These will be used to answer HR-specific queries intelligently.

---

## 🧪 Testing

- Trigger the workflow by sending a message to the webhook (check `When chat message received` node).
- The bot will use memory + GPT + vector QA to respond accurately.

---

## 📌 Notes

- All nodes are connected using LangChain's AI Agent framework inside n8n.
- Workflow is designed to be stateless across sessions but can be extended with persistent memory or databases.
- You can further extend tools like HR Policy Generator, Interview Prep, etc.

---

## 🛡️ License

MIT License © [PlayOwnAI]

---

---

## 🌐 Connect with Us

[![Facebook](https://img.shields.io/badge/Follow-Facebook-1877F2?logo=facebook&logoColor=white)](https://web.facebook.com/Playownai/)
[![LinkedIn](https://img.shields.io/badge/Follow-LinkedIn-0A66C2?logo=linkedin&logoColor=white)](https://www.linkedin.com/company/playownai)
[![YouTube](https://img.shields.io/badge/Subscribe-@PlayOwnAi-FF0000?logo=youtube&logoColor=white)](https://www.youtube.com/@PlayOwnAi)
[![GitHub](https://img.shields.io/badge/Repo-MyN8N-181717?logo=github&logoColor=white)](https://github.com/matinict/MyN8N/blob/main/readme.md)
