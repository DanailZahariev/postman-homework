# 🧪 GitHub API Postman Collection

This project is an automated API testing suite built with **Postman** and **Newman**, using the [GitHub REST API](https://docs.github.com/en/rest).

It covers end-to-end user stories including:
- ✅ Authentication
- 📁 Creating repositories
- 🐛 Creating and managing issues
- 💬 Commenting on issues
- 🚫 Closing and deleting repositories

---

## 📦 Prerequisites

### ✅ Required:
- [Node.js & npm](https://nodejs.org) (v18+)
- [GitHub Account](https://github.com/)
- GitHub [Personal Access Token (PAT)](https://github.com/settings/tokens)  
  with **Fine-grained permissions**:
  - `Repository contents` → **Read and write**
  - `Issues` → **Read and write**
  - `Metadata` → **Read-only**

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/DanailZahariev/postman-homework.git
```
```bash
cd postman-homework
```

### 2. Install Dependencies

```bash
npm install newman 
```
```bash
npm install newman-reporter-html
```

This installs `newman` and the `newman-reporter-html`.

### 3. Configure the Postman Environment

Export your Postman environment to a file called `environment.json`.  
Make sure it contains at least the following variables:

```json
[
  { "key": "github_token", "value": "your_token_here", "enabled": true },
  { "key": "base_url", "value": "https://api.github.com", "enabled": true }
]
```

> You can do this from **Postman → Environments → Export**

---

## 🧪 Run the Tests

```bash
./run.sh
```

This will:
- Run all User Story requests via Newman
- Use the `environment.json` file
- Export a full HTML test report to `results.html`

---

## 🪟 Windows Users

### 🔹 Use Git Bash (Recommended)

Download from: [https://git-scm.com/](https://git-scm.com/)  
Use it to run the `run.sh` script like on Linux/macOS.

```bash
./run.sh
```

> Alternatively, convert the logic to a `.bat` file or use `npx newman` manually.

---

## 📊 View the Test Report

After running the suite:

- Open `results.html` in any browser.

Or use:

```bash
# macOS
open results.html

# Linux
xdg-open results.html

# Windows (CMD)
start results.html
```

---

## 🔐 Providing Your GitHub Credentials

You **only need to include your token** in the exported Postman environment file as `github_token`.

The GitHub **username is auto-fetched** during test execution from the `/user` API.

---

## ✅ .gitignore

This repo ignores sensitive or local files:

```
.env
node_modules/
results.html
```

---

## 💡 Troubleshooting

| Problem                           | Solution                                                                 |
|----------------------------------|--------------------------------------------------------------------------|
| `401 Unauthorized`               | Check if your token is valid and has correct scopes                      |
| `Bad credentials`                | Token is expired or not provided in the environment file                 |
| `getaddrinfo ENOTFOUND`          | Make sure `base_url` is defined in your environment file                 |
| `newman: could not find reporter`| Run `npm install` to ensure dependencies are installed locally           |

---

## 🤝 Contributing

Forks, issues, PRs, and ideas are welcome!

---

## 📝 License

MIT License
