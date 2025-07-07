# VapiWeatherCall  
## Build Your Own AI Voice Agents in n8n Using Vapi

# 🌦️ VapiWeatherCall – AI-Powered Weather Voice Assistant

Welcome to **PlayOwnAi!** In this project, we’ll build a smart AI voice assistant named `VapiWeatherCall` using **Vapi**, **n8n**, **OpenAI**, and **OpenWeatherMap**. This workflow enables real-time weather queries through voice using AI automation.

---

## 🎙️ Intro – Final Workflow Overview

This AI-powered assistant listens to user input through **Vapi**. The voice message is:

1. **Captured by n8n** using a **Webhook**.
2. **Parsed by an AI Agent** (OpenAI GPT-4o-mini) to extract the location.
3. **Weather data is fetched** from **OpenWeatherMap**.
4. **OpenAI** reformulates the result into a one-sentence natural response.
5. The response is returned to **Vapi** via **Respond to Webhook**.

This powerful combination delivers real-time, voice-based AI responses.

---

## 📦 Workflow Overview – Step by Step

1. 📥 **Webhook Node** – Receives voice request from Vapi.
2. 🧠 **AI Agent (LangChain)** – Understands the query and extracts the location.
3. 🌤️ **OpenWeatherMap Tool** – Fetches current weather.
4. 💬 **OpenAI Chat Model** – Generates a user-friendly reply.
5. 📡 **Respond to Webhook** – Sends the result back to Vapi.

All handled in n8n with zero complex code!

---

## 🛠️ Workflow Creation Steps

### Step 1: Create Workflow

- Open your n8n dashboard.
- Create a new workflow.
- Rename it `VapiWeatherCall`.

### Step 2: Add Webhook Node

- Add a **Webhook** node.
- Method: `POST`
- Path: Your custom webhook URL
- This node receives user voice messages from Vapi.

---

## 🎙️ Node-by-Node Walkthrough

### 🧠 AI Agent Node

- Select **AI Agent** from the node list.
- Prompt type: `define`
- Prompt:

```handlebars
Find the weather for  {{ $json.body.message.toolWithToolCallList[0].toolCall.function.arguments.Place }}
Only output one sentence, no newline.
```

### 🌤️ OpenWeatherMap Node

- Add a new node: **OpenWeatherMap**
- Set up credentials: [OpenWeatherMap API](https://home.openweathermap.org/api_keys)
- The city name is automatically pulled from the AI Agent

### 💬 OpenAI Chat Model Node

- Add: **OpenAI Chat Model** node
- Connect using credentials from [OpenAI API Settings](https://platform.openai.com/settings/organization/api-keys)
- Model: `gpt-4o-mini`

### 📡 Respond to Webhook Node

- Add: **Respond to Webhook** node
- Response Body:

```json
{
  "results": [
    {
      "toolCallId": "{{ $('Webhook').item.json.body.message.toolCallList[0].id }}",
      "result": "{{ $json.output }}"
    }
  ]
}
```

- This sends the weather response back to the Vapi conversation.

---

## 🔑 API Credential Setup

| Service        | Link to Generate API Key                                                      |
| -------------- | ----------------------------------------------------------------------------- |
| OpenAI         | [OpenAI API Keys](https://platform.openai.com/settings/organization/api-keys) |
| OpenWeatherMap | [OpenWeatherMap Keys](https://home.openweathermap.org/api_keys)               |

---

## 🔗 Useful Links

- 📂 [Workflow JSON File](https://github.com/matinict/MyN8N/blob/main/VapiWeatherCall.json)
- 📄 [Markdown Documentation](https://github.com/matinict/MyN8N/blob/main/VapiWeatherCall.md)
- 🗣️ [Try on Vapi Dashboard](https://dashboard.vapi.ai/assistants/36e273c4-1498-40ae-b07a-db1b4ecd27f1#start-speaking)

---

## 🛟 Support Line

If you find this complex:

🧩 Download the full workflow from GitHub: [MyN8N Repository](https://github.com/matinict/MyN8N)

💬 Need help? Drop a comment below on [YouTube Channel – PlayOwnAi](https://www.youtube.com/@PlayOwnAi) and I’ll assist you.

---

Happy Automating with AI! 🤖



Let me know if you'd like this exported as a `.md` file or automatically committed to your GitHub repo.
```

