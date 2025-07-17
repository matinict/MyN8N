# MapsDataScrap

# 🗺️ MapsDataScrap – Automated Lead Scraper for Real Estate in Dubai

[![Built with n8n](https://img.shields.io/badge/Built%20with-n8n-208ec6?logo=n8n&logoColor=white)](https://n8n.io)
[![SerpAPI](https://img.shields.io/badge/API-SerpAPI-blue?logo=serpapi)](https://serpapi.com)
[![Google Sheets](https://img.shields.io/badge/Storage-Google%20Sheets-green?logo=google-sheets)](https://www.google.com/sheets)


Scrapes Google Maps for real estate companies in Dubai (Bur Dubai, Karama, Satwa), extracts contact details, formats phone numbers, and saves them into a Google Sheet using **n8n** and **SerpAPI**.

---

## 🚀 Workflow Overview

1. **Manual Trigger** – Start by running the workflow manually via “Execute workflow”.
2. **Set Keywords** – Defines search keywords for different Dubai areas.
3. **Split in Batches** – Controls request flow.
4. **HTTP Request** – Queries SerpAPI with Google Maps engine for each keyword.
5. **Extract Results** – Parses JSON to extract name, phone, address, website, and GPS coordinates.
6. **FormatTel** – Cleans and formats phone numbers for Google Sheets.
7. **Google Sheets** – Appends or updates rows in a specified Sheet based on `PhoneFormatted`.
8. **Wait** – Adds a delay to prevent rate-limiting before looping.

---

## 📋 Example Search Keywords

- Real Estate Companies Bur Dubai  
- Real Estate Companies Karama  
- Real Estate Companies Satwa  

---

## 📝 Output Columns in Google Sheet

- **PhoneFormatted**
- **name**
- **address**
- **link**
- **location**

Duplicates are avoided using the formatted phone number as a unique key.

---

## 🔧 Setup & Configuration

- ✅ Install **SerpAPI** credentials for Google Maps scraping  
- ✅ Set **Google Sheets OAuth2** credentials  
- Update:
  - **API Key** in the HTTP Request node
  - **Spreadsheet ID** and **Sheet GID** in the Google Sheets node

---

## 🧰 Useful Resources

- 📘 [n8n SerpAPI Node Docs](https://docs.n8n.io/integrations/builtin/cluster-nodes/sub-nodes/n8n-nodes-langchain.toolserpapi/) :contentReference[oaicite:1]{index=1}  
- 📘 [n8n Google Maps Scraper Template](https://n8n.io/workflows/2063-google-maps-scraper/) :contentReference[oaicite:2]{index=2}  
- 📘 [SerpAPI Integration Overview](https://serpapi.com/blog/boost-your-n8n-workflows-with-serpapis-verified-node/) :contentReference[oaicite:3]{index=3}  

---

## 💡 Tips & Best Practices

- Use a mild delay (`Wait` node) to avoid hitting SerpAPI rate limits.
- Confirm that phone numbers are correctly formatted before importing into CRMs.
- Modify keywords list or target locations for expanded lead sourcing.
- Always test search queries manually to ensure high result accuracy.

---

## 📈 Use Cases

- Real estate lead generation  
- Local business data collection  
- CRM enrichment and market analysis  
- Automated business outreach workflows

---

Feel free to request:
- 🔄 A downloadable `.md` file  
- 🧩 Integration with email or Slack notifications  
- ⚙️ Scheduler trigger for recurring scraping

Let me know how I can support your automation!
::contentReference[oaicite:4]{index=4}

