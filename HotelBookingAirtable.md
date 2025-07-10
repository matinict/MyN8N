
Here is a professional README.md for your **HotelBookingAirtable** n8n workflow:

```markdown
# 🏨 HotelBookingAirtable – Hotel Room Booking Automation with n8n & Airtable

This workflow lets you capture hotel room booking requests via a simple **form** and saves the data into an **Airtable** base for easy management.

---

## 🚀 Features

- Collect user input through a web form
- Capture customer name and room preference (dropdown)
- Automatically create a new record in Airtable with booking details
- Simple status field to track booking progress (Todo, In progress, Done)

---

## ⚙️ Workflow Overview

1. **Form Trigger**: Presents a booking form to users asking for their name and preferred room type.
2. **Airtable Node**: Creates a new record in Airtable with submitted data.

---

## 📋 Form Details

- **Form Title**: Hotel Room Booking
- **Form Description**: What room do you like?
- **Fields**:
  - Your Name (text input)
  - What room do you like? (dropdown)
    - single room
    - Deluxe room
    - Suite

---

## 📂 Airtable Setup

| Base ID           | `appLqYqnhRVWkIj1W`                                  |
|-------------------|------------------------------------------------------|
| Table Name        | Table 1                                              |
| Fields            | - Name (text)                                        |
|                   | - Room (text)                                        |
|                   | - Status (select: Todo, In progress, Done)          |

---

## 🛠️ Credentials Required

- Airtable API Token with write access to your base and table.

---

## 💡 How It Works

When a user submits the form, their **name** and **room preference** are sent to the workflow via webhook. The Airtable node then creates a new record capturing this information, initializing the **Status** field to blank or default.

---

## 🔗 Useful Links

- [Airtable API Documentation](https://airtable.com/api)
- [n8n Documentation](https://docs.n8n.io)

---

## 🚀 Get Started

1. Import this workflow into your n8n instance.
2. Configure your Airtable credentials.
3. Update Base ID and Table name in the Airtable node to match your Airtable setup.
4. Activate the workflow.
5. Share the form URL to start accepting bookings!

---

Happy booking! 🎉
```

If you want, I can also generate this as a downloadable `.md` file. Would you like that?
