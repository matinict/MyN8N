# 📨 DailyCryptoEmailBot – Automated AI Crypto Report

[![Built with n8n](https://img.shields.io/badge/Built%20with-n8n-208ec6?logo=n8n\&logoColor=white)](https://n8n.io) [![CoinGecko API](https://img.shields.io/badge/Data%20Source-CoinGecko-orange?logo=coingecko)](https://www.coingecko.com/en/api) [![Google Gemini AI](https://img.shields.io/badge/AI%20Model-Google%20Gemini-34a853?logo=google)](https://ai.google.dev/) [![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](#)

A powerful, fully automated daily crypto report bot that fetches live prices from **CoinGecko**, analyzes the market using **Google Gemini AI**, and delivers **personalized trading suggestions** via email using **n8n** and **JavaScript**.

---

## 🚀 Key Features

* 🔄 **Daily Scheduling** – Automatically runs on your preferred schedule
* 📈 **Real-Time Data** – Fetches live crypto data from CoinGecko
* 🤖 **AI Analysis** – Google Gemini provides buy/hold/sell recommendations
* 💌 **Email Report** – Sends formatted summaries to your inbox
* 🧠 **Intelligent Parsing** – Handles duplicates and edge cases with JavaScript

---

## 📦 What's Inside the Workflow

### Workflow: `DailyCryptoEmailBot`

1. **Schedule Trigger** – Initiates daily at a set time
2. **JS Node – Coin List**

```js
return [
  { json: { coin: "bitcoin" } },
  { json: { coin: "ethereum" } },
  { json: { coin: "solana" } },
  { json: { coin: "cardano" } },
  { json: { coin: "dogecoin" } }
];
```

3. **HTTP Request (CoinGecko)** – Retrieves current prices and changes
4. **JS Parser** – Filters, formats and creates prompts for AI:

```js
const seen = new Set();
const output = [];

for (const item of items) {
  const coin = item.json.id;
  if (!seen.has(coin)) {
    seen.add(coin);
    const price = item.json.current_price;
    const change = Number(item.json.price_change_percentage_24h || 0).toFixed(2);
    const coinUpper = coin.toUpperCase();

    output.push({
      json: {
        coin,
        prompt: `You are a professional cryptocurrency advisor.\n\nPlease analyze the following data:\n\nCoin: ${coinUpper}\nCurrent Price: $${price}\n24-Hour Change: ${change}%\n\nRules:\n- If change > 5% → Recommend: Buy\n- If change < -5% → Recommend: Sell\n- Else → Recommend: Hold\n\nPlease respond only in this format:\n\nDecision: <Buy|Hold|Sell>\nReason: <Brief reason in one sentence>`
      }
    });
  }
}

return output;
```

5. **Gemini Chat Model** – Feeds prompt to Google Gemini to get insights
6. **Merge Node** – Combines crypto data with AI responses
7. **JS Email Formatter** – Builds the HTML email body:

```js
let body = "<h2>📊 Daily Crypto Market Recommendations</h2>";

for (const item of items) {
  const coin = item.json.coin?.toUpperCase() || "UNKNOWN";
  const response = item.json.output || "No response";
  const formatted = response.replace(/\n/g, "<br>");
  body += `<p><strong>🔹 ${coin}</strong><br>${formatted}</p>`;
}

return [{ json: { htmlBody: body } }];
```

8. **Gmail Node** – Sends email with full report

---

## 🔗 Resources

* 📂 [Workflow JSON](https://github.com/matinict/MyN8N/blob/main/DailyCryptoEmailBot.json)
* 📺 [YouTube Setup Guide](https://youtu.be/IzXPYELQ8r0)
* 🧠 [Google Gemini Setup](https://ai.google.dev/)
* 💹 [CoinGecko API Reference](https://www.coingecko.com/en/api)

---

## 🧠 AI Prompt Format

```
Decision: <Buy|Hold|Sell>
Reason: <Brief reason in one sentence>
```

Decision logic:

* **Buy** if price change > 5%
* **Sell** if price change < -5%
* **Hold** otherwise



---

