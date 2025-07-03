# 💰 ChatBasedCryptoAdvisor – Real-Time Crypto Price AI Advisor

A dynamic, chat-based crypto advisor built in `n8n` using LangChain, CoinGecko API, and Google Gemini. This workflow listens for a user's message, extracts the mentioned cryptocurrency, fetches its real-time price and 24h change, and responds with **Buy**, **Sell**, or **Hold** recommendations based on price movement.

---

## 🧠 How It Works

1. 🔔 **Trigger**: Receives a message via chat webhook.
2. 🧾 **Coin Detection**: Identifies mentioned cryptocurrency (e.g., BTC, ETH).
3. 🌐 **API Call**: Queries CoinGecko for the latest market data.
4. 📊 **Analysis Prompt**: Formats market data into a prompt with simple trading logic:
   - **Buy** if price increased >5%
   - **Sell** if price dropped >5%
   - **Hold** otherwise
5. 🤖 **AI Decision**: Google Gemini processes the prompt and suggests an action.

---

## 🧩 Workflow Structure

```

Chat Message ➝ Code (Detect Coin)
➝ HTTP Request (CoinGecko)
➝ Code (Generate Prompt)
➝ AI Agent
➝ Google Gemini Model

```

---

## 🔧 Requirements

- **n8n** (self-hosted or cloud)
- **Google Gemini (PaLM) API key**
- LangChain-enabled nodes in n8n

---

## 🔐 API Credentials Setup

| Service         | Credential Name                         |
|-----------------|------------------------------------------|
| Google Gemini   | `Google Gemini(PaLM) Api account`       |

---

## 🧠 Node Breakdown

| Node                     | Purpose                                                         |
|--------------------------|-----------------------------------------------------------------|
| `When chat message received` | Listens to incoming chat messages                           |
| `Code`                   | Parses coin name from input (BTC, ETH, etc.)                   |
| `HTTP Request`           | Fetches market data from [CoinGecko](https://coingecko.com)    |
| `Code1`                  | Builds a trading prompt using price & 24h % change              |
| `AI Agent`               | LangChain agent to handle logic                                 |
| `Google Gemini Chat Model` | Processes the prompt and gives advice                        |

---

## 📈 Supported Coins

These coin names or symbols are recognized in chat:

- Bitcoin (`bitcoin`, `btc`)
- Ethereum (`ethereum`, `eth`)
- Solana (`solana`, `sol`)
- Dogecoin (`dogecoin`, `doge`)
- Cardano (`cardano`, `ada`)
- Polkadot (`polkadot`, `dot`)

> Add more by editing the `coinMap` in the first Code node.

---

## 📌 Example Prompt Sent to Gemini

```

You are a financial assistant. Analyze Bitcoin's data and suggest an action.

Bitcoin Price: \$63,124
24-Hour Change: 7.21%

Guidelines:

* If change > 5% → Recommend: Buy
* If change < -5% → Recommend: Sell
* Else → Recommend: Hold

Respond in the format: "Buy/Hold/Sell: <reason>"

````

---

## 🧪 How to Test

1. Deploy the workflow in n8n.
2. Send a POST request or message containing any supported coin name.
3. Wait for Gemini to respond with actionable advice.

---

## 🛠️ Build Own AI-Powered Crypto Chatbot Advisor!

Below are the core `Code` nodes used to detect the coin and build the prompt for AI:

### ✅ Code 1 – Detect Cryptocurrency from Chat

```js
// Loop over input items and add a new field called 'coin' to the JSON of each one
const input = $json["chatInput"].trim().toLowerCase();

// Map keywords to CoinGecko IDs
const coinMap = {
  bitcoin: "bitcoin",
  btc: "bitcoin",
  ethereum: "ethereum",
  eth: "ethereum",
  solana: "solana",
  sol: "solana",
  dogecoin: "dogecoin",
  doge: "dogecoin",
  cardano: "cardano",
  ada: "cardano",
  polkadot: "polkadot",
  dot: "polkadot"
};

let foundCoin = null;

for (const keyword in coinMap) {
  if (input.includes(keyword)) {
    foundCoin = coinMap[keyword];
    break;
  }
}

if (!foundCoin) {
  throw new Error("Could not detect any supported cryptocurrency.");
}

return [
  {
    json: {
      coin: foundCoin
    }
  }
];
````

---

### ✅ Code 2 – Format Prompt for AI Based on Price Data

```js
if (!items[0].json.market_data) {
  throw new Error("market_data not found. Check API response or query params.");
}

const data = items[0].json.market_data;
const price = data.current_price.usd;
const change = data.price_change_percentage_24h;

return [
  {
    json: {
      price,
      change_24h: change,
      prompt: `You are a financial assistant. Analyze Bitcoin's data and suggest an action.

Bitcoin Price: $${price}
24-Hour Change: ${change}%

Guidelines:
- If change > 5% → Recommend: Buy
- If change < -5% → Recommend: Sell
- Else → Recommend: Hold

Respond in the format: "Buy/Hold/Sell: <reason>".`
    }
  }
];
```

---

## 📜 License

MIT License © \[Your Name or Org]

---

## 📺 Tutorials & More

Check out [PlayOwnAI YouTube Channel](https://www.youtube.com/@PlayOwnAi) for tutorials on n8n and AI-based automations.

```

