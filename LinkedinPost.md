# LinkedinPost
## 📣 LinkedInPost – Automated LinkedIn Organization Posting

[![Built with n8n](https://img.shields.io/badge/Built%20with-n8n-208ec6?logo=n8n&logoColor=white)](https://n8n.io)  
[![LinkedIn](https://img.shields.io/badge/Platform-LinkedIn-blue?logo=linkedin)](https://www.linkedin.com)

This workflow lets you automatically post updates to a LinkedIn **Organization Page** via n8n with a manual trigger.

---

## 🚀 Workflow Overview

1. **Manual Trigger** – Manually execute the workflow using the “Execute workflow” button.  
2. **Create a Post** – Sends the specified text content to your LinkedIn organization page.

---

## 📝 Workflow Structure

| Step                     | Functionality                                                   |
|--------------------------|------------------------------------------------------------------|
| Manual Trigger           | Initiates the workflow manually                                 |
| LinkedIn “Create a post”| Sends a post as your LinkedIn organization                      |

### Post Settings (in the LinkedIn node):
- **postAs**: `organization`
- **organization**: Your LinkedIn org ID (e.g., `107121112`)
- **text**: Content of the post — customizable

---

## 🔧 Setup & Configuration

1. **Import** this workflow into n8n.
2. **Add Credential** for LinkedIn (OAuth2).
3. **Specify your Organization ID** in the LinkedIn node.
4. **Customize your post text** in the node.
5. **Run the workflow** manually to publish the post.

---

## 💡 Tips

- Great for scheduling team updates, blog post announcements, product launches, and event invites.
- To automate posting, connect it to a **Schedule Trigger** instead of a manual button.
- You can easily integrate additional fields like images, URLs, hashtags, and mentions.

---

## 🔗 Useful Links

- 📘 [n8n LinkedIn Node Docs](https://docs.n8n.io/integrations/builtin/app-nodes/n8n-nodes-base.linkedin/)  
- 🌐 [LinkedIn Developer API](https://docs.microsoft.com/linkedin/)  

---

Let me know if you’d like:
- 🛠️ A scheduled version (runs weekly/monthly)  
- 🖼️ Image attachment support  
- 🔄 Integration with blog RSS or GitHub releases  
- 📩 Notification on success or error via Slack/email  

Happy posting! 🚀
