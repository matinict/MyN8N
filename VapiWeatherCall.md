# VapiWeatherCall  
## Build Your Own AI Voice Agents in n8n Using Vapi


---

```markdown
# 🌦️ VapiWeatherCall – AI-Powered Weather Caller Agents (n8n + OpenAI + OpenWeatherMap)

**VapiWeatherCall** is an AI-driven Caller Agents workflow built with `n8n` that accepts webhook-based queries (via tools like [Vapi](https://www.vapi.ai/)), extracts location data using OpenAI, fetches live weather using OpenWeatherMap, and returns a short natural-language weather summary.

---

## 💡 Use Case

- Integrate this with a voice AI system like Vapi.ai or chat interface
- Ask: “What's the weather in Tokyo?”
- Get a direct AI-generated sentence with the current weather

---

## 🔩 Workflow Overview

```

Webhook (POST)
⮕ AI Agent (LangChain)
⮕ OpenAI GPT-4.1-mini
⮕ Tool: OpenWeatherMap (current weather)
⮕ Response (Returns weather info with toolCallId)

````

---

## 🧱 Nodes Used

| Node                  | Purpose                                          |
|-----------------------|--------------------------------------------------|
| Webhook               | Receives incoming request from Vapi/clients     |
| AI Agent              | LangChain node that orchestrates AI + tools     |
| OpenAI Chat Model     | GPT-4.1-mini model for parsing and summarizing  |
| OpenWeatherMap Tool   | Fetches weather data for the city               |
| Respond to Webhook    | Returns structured JSON with result             |

---

## 🧠 AI Prompt Logic

The `AI Agent` uses the following prompt template:

```handlebars
Find the weather for  {{ $json.body.message.toolWithToolCallList[0].toolCall.function.arguments.Place }}
Only output one sentence, no newline.
````

This ensures a concise weather update like:

> `"It's currently 25°C with light rain in Dhaka."`

---

## 🔐 Required Credentials

| Service        | Credential Name | Link to Create Key                                                            |
| -------------- | --------------- | ----------------------------------------------------------------------------- |
| OpenAI         | `VapiOpenAi`    | [OpenAI API Keys](https://platform.openai.com/settings/organization/api-keys) |
| OpenWeatherMap | `POAiWeath`     | [OpenWeatherMap API Keys](https://home.openweathermap.org/api_keys)           |

---

## 📥 Webhook Format (Vapi Compatible)

Expected payload format from voice/chat system (e.g., Vapi):

```json
{
  "body": {
    "message": {
      "toolWithToolCallList": [
        {
          "toolCall": {
            "function": {
              "arguments": {
                "Place": "Dhaka"
              }
            }
          }
        }
      ],
      "toolCallList": [
        {
          "id": "abc123"
        }
      ]
    }
  }
}
```

---

## 📤 Response Format

```json
{
  "results": [
    {
      "toolCallId": "abc123",
      "result": "It's 28°C and sunny in New York."
    }
  ]
}
```

---

## 📁 Files & Live Demo

* 🔗 **Workflow JSON**: [VapiWeatherCall.json](https://github.com/matinict/MyN8N/blob/main/VapiWeatherCall.json)
* 📄 **Documentation**: [VapiWeatherCall.md](https://github.com/matinict/MyN8N/blob/main/VapiWeatherCall.md)
* 🗣️ **Try it Live on Vapi**: [Launch Assistant](https://dashboard.vapi.ai/assistants/36e273c4-1498-40ae-b07a-db1b4ecd27f1#start-speaking)

---

## 🧪 How to Test

1. Import the workflow into your self-hosted or cloud `n8n` instance.
2. Add OpenAI and OpenWeatherMap credentials.
3. Test the webhook using Postman or Vapi's voice assistant with a supported city.
4. Get back a natural language weather response.

---

## 📜 License

MIT License ©PlayOwnAi

---

## 📺 Tutorials & More

Check out [PlayOwnAI on YouTube](https://www.youtube.com/@PlayOwnAi) for tutorials on AI & automation with n8n and tools like Vapi and LangChain.

```

Let me know if you'd like this exported as a `.md` file or automatically committed to your GitHub repo.
```

