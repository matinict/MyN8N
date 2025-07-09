
# 🌍 VapiTravelCall – AI Travel Assistant using n8n, Gemini, and SerpAPI

Welcome to **PlayOwnAi!** In this project, you'll build `VapiTravelCall`, a smart AI-powered travel inquiry assistant using **Vapi**, **n8n**, **Google Gemini**, **LangChain**, and **SerpAPI**. It captures travel preferences via voice or form and generates a customized summary email.

---

## 🚀 Features

- Collects traveler data via webhook
- Extracts structured details using **Gemini 2.5 Pro**
- Searches flight, hotel & activities using **SerpAPI**
- Generates a custom email summary via AI agent
- Sends confirmation to the user and responds to Vapi

---

## 🌐 Workflow Steps (Simplified)

1. **Webhook**: Accepts POST request with customer data (from Vapi or other source).
2. **Set Node**: Organizes the incoming data (name, travel dates, city, etc.).
3. **LLM Chain (LangChain)**: Uses Gemini 2.5 to parse and format input.
4. **HTTP Requests (SerpAPI)**:
   - Fetches **activities**
   - Fetches **flight info**
   - Fetches **hotel options**
5. **Email Agent (LangChain)**:
   - Generates a **confirmation email** including flights & hotels.
6. **Code Node**: Extracts `subject` and `body` from generated text.
7. **Gmail Node**: Sends the formatted email to the traveler.
8. **Respond to Webhook**: Confirms back to Vapi that response was sent.

---

## 🔑 Required APIs & Credentials

| Service       | Purpose                | API Setup Guide                                         |
| ------------- | ---------------------- | ------------------------------------------------------- |
| SerpAPI       | Search flights/hotels  | [Get API Key](https://serpapi.com/manage-api-key)       |
| Google Gemini | AI response generation | [Get API Key](https://makersuite.google.com/app/apikey) |
| Gmail OAuth2  | Send confirmation mail | Set up from Google Cloud Console                        |

---

## 📂 Sample Input (Webhook Body)

```
{
  "name": "Matin Rahman",
  "email": "matinict@gmail.com",
  "phoneNumber": "+880171776441",
  "departureCity": "Dhaka",
  "destination": "Dubai",
  "departureDate": "2025-08-15",
  "returnDate": "2025-08-25",
  "numberOfTravelers": 2,
  "travelPurpose": "Vacation",
  "hotelType": "Luxury",
  "roomType": "Suite",
  "transportRequired": true,
  "preferredAirline": "Emirates",
  "budgetRange": "$2000–$3000",
  "specialRequests": "Halal food, wheelchair assistance",
  "bookingStatus": "New Lead"
}
```

---

## 🔗 Key Node Details

### 📅 Set Node (AgentQueryFields)

- Organizes the input fields into readable variable names

### 🧠 Gemini Chat Model

- Model: `models/gemini-2.5-pro`
- Used twice:
  - To parse/structure user travel intent
  - To generate personalized email

### 🌐 SerpAPI Integration

- Google Flights, Hotels, Activities
- Search queries built dynamically from user input

### 📨 Email AI Agent Prompt

Includes:

- Summary of traveler info
- Dynamically generated flight & hotel results
- Friendly, clear, professional confirmation message

### 🏨 Code Node

Extracts:

- **Subject** from formatted email
- **Body** as plain text for Gmail

### 📧 Gmail Node

- Sends email using traveler email
- Uses OAuth2 credentials (Gmail API)

---

```
Dear Matin Rahman,

Thank you for reaching out to TravelPOAi! We are delighted to assist
you in planning your upcoming vacation to Dubai.

We have reviewed your travel request and have prepared some initial
options based on your preferences. Here is a summary of your plan so
far:

**Your Trip Details**
*   **Departure:** Dhaka (DAC)
*   **Destination:** Dubai (DXB)
*   **Date:** August 15, 2025
*   **Travellers:** 2
*   **Preferences:** Luxury Suite, Halal food, wheelchair assistance.

---

### **Flight Options**
Here are a few flight possibilities for your trip from Dhaka to Dubai:

*   **Option 1:** US-Bangla Airlines (Economy) - 5h 15m - **$863**
*   **Option 2:** US-Bangla Airlines (Economy) - 5h 10m - **$863**
*   **Option 3:** Emirates (Economy) - 5h 0m - **$1,150**

### **Luxury Hotel Options**
Based on your preference for a luxury suite, we've selected a few
highly-rated hotels for your consideration (prices are per night):

*   **JW Marriott Marquis Hotel Dubai:** $90
*   **Taj Dubai:** $126
*   **Waldorf Astoria Dubai Palm Jumeirah:** $177
*   **Anantara The Palm Dubai Resort:** $184
*   **Address Beach Resort:** $209
*   **Atlantis, The Palm:** $407

---

### **Next Steps**

One of our travel specialists will contact you shortly via email or
phone (+880171776441) to discuss these options in more detail. They
will help you finalize your itinerary, confirm availability, and
ensure all your special requests, including wheelchair assistance and
Halal food arrangements, are taken care of.

Thank you again for choosing TravelPOAi. We look forward to helping
you create a fantastic and stress-free travel experience!

Warm regards,

**The TravelPOAi Team**
}
```

## 🚫 Tips

- Ensure your SerpAPI and Gemini keys have enough quota.
- Always test webhook locally before going live.
- Customize the email tone or format from the Agent prompt if needed.

---

## 🔗 Useful Links

- [GitHub Workflow File](https://github.com/matinict/MyN8N/blob/main/VapiTravelCall.json)
- [MyN8N Repository](https://github.com/matinict/MyN8N)
- [YouTube Channel – PlayOwnAi](https://www.youtube.com/@PlayOwnAi)

---

Happy Automating with TravelPOAi! 🚀🌏

