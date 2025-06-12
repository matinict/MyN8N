#Build Own AI-Powered Crypto Chatbot Advisor!

## Code 1:
    
    
    // Loop over input items and add a new field called 'myNewField' to the JSON of each one
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






## Code 2:


    
    
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



