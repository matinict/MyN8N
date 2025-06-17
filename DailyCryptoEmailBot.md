# Build a Daily Crypto Email Bot with JS – Full Automation Guide!

## Code

    return [
      { json: { coin: "bitcoin" } },
      { json: { coin: "ethereum" } },
      { json: { coin: "solana" } },
      { json: { coin: "cardano" } },
      { json: { coin: "dogecoin" } }
    ];


  ## Code1
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
          prompt: `You are a professional cryptocurrency advisor.
    
    Please analyze the following data:
    
    Coin: ${coinUpper}
    Current Price: $${price}
    24-Hour Change: ${change}%
    
    Rules:
    - If change > 5% → Recommend: Buy
    - If change < -5% → Recommend: Sell
    - Else → Recommend: Hold
    
    Please respond only in this format:
    
    Decision: <Buy|Hold|Sell>
    Reason: <Brief reason in one sentence>`
        }
      });
    }
    }
    
    return output;



  
  ## Code2
    let body = "<h2>📊 Daily Crypto Market Recommendations</h2>";

    for (const item of items) {
      const coin = item.json.coin?.toUpperCase() || "UNKNOWN";
      const response = item.json.output || "No response";
    
      // Format line breaks properly
      const formatted = response.replace(/\n/g, "<br>");
    
      body += `<p><strong>🔹 ${coin}</strong><br>${formatted}</p>`;
    }
    
    return [{ json: { htmlBody: body } }];
