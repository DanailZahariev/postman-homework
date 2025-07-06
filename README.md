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
git https://github.com/DanailZahariev/postman-homework.git
cd postman-homework
```

### 2. Install Dependencies

```bash
npm install newman 
npm install newman-reporter-html
```

This installs `newman` and the `newman-reporter-html`.

### 3. Configure Environment Variables

Create a `.env` file by copying the example:

```bash
cp .env.example .env
```

Then edit `.env` and provide your GitHub token:

```env
github_token=your_github_token_here
base_url=https://api.github.com
```

> ❗ **Make sure your variable names match the lowercase format exactly**, as Postman uses `{{github_token}}` and `{{base_url}}`.

---

## 🧪 Run the Tests

```bash
./run.sh
```

This will:
- Run all User Story requests via Newman
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

You **only need your token** inside `.env`:

```env
github_token=ghp_xxxxxxxx...
base_url=https://api.github.com
```

Your GitHub **username is auto-fetched** during test execution from the `/user` API.

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
| `Bad credentials`                | Token is expired or not provided via `.env` or `run.sh`                  |
| `getaddrinfo ENOTFOUND`          | Make sure `base_url` is defined in `.env`                                |
| `newman: could not find reporter`| Run `npm install` to ensure dependencies are installed locally           |

---

## 🤝 Contributing

Forks, issues, PRs, and ideas are welcome!

---

## 📝 License

MIT License
