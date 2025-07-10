

# Webhook & HTTP POST Integration TallyForm & catching web requests in n8n


#### What is Webhook?
 webhook is a way for one application to automatically send real-time data to another application when a specific event happens — without needing to request or "poll" for updates.



#### What is Request Catche?
 Request Catcher is a tool for catching web requests for testing webhooks, http clients and other applications that communicate over http.



# WebhookHTTPPostTallyForm — n8n Workflow

This workflow captures form submissions via a webhook and forwards specific form data to an external HTTP endpoint.

---

## 🚀 Workflow Overview

1. **Webhook Node**  
   - Listens for incoming `POST` requests at the specified path: `/fe841ca3-43ae-4879-863f-c4de8819f9ab`.  
   - Expected to receive data from a Tally form or similar source in JSON format.

2. **HTTP Request Node**  
   - Sends a `POST` request to `https://poai1.requestcatcher.com/test`.  
   - Forwards the form fields extracted from the webhook payload:  
     - `Name` (from `body.data.fields[0].value`)  
     - `Email` (from `body.data.fields[1].value`)

---

## 🔧 Configuration Details

- **Webhook Node**:  
  - HTTP Method: `POST`  
  - Path: `fe841ca3-43ae-4879-863f-c4de8819f9ab` (customizable)  

- **HTTP Request Node**:  
  - Method: `POST`  
  - URL: `https://poai1.requestcatcher.com/test` (replace with your target endpoint)  
  - Body Parameters: Dynamically mapped from the incoming webhook JSON payload.

---

## 📝 Example Webhook Payload Structure

```json
{
  "body": {
    "data": {
      "fields": [
        { "value": "John Doe" },
        { "value": "john.doe@example.com" }
      ]
    }
  }
}
