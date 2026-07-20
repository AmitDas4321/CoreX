<h1 align="center">
  <img src="https://img.shields.io/badge/CoreX-Terminal%20Theme-6C63FF?style=for-the-badge&logo=gnu-bash">
  <br>
  CoreX
  <br>
</h1>

<p align="center">
  <strong>A Modern, Clean & Cyberpunk Terminal Experience</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/github/stars/AmitDas4321/CoreX?style=flat-square">
  <img src="https://img.shields.io/github/forks/AmitDas4321/CoreX?style=flat-square">
  <img src="https://img.shields.io/github/license/AmitDas4321/CoreX?style=flat-square">
  <img src="https://img.shields.io/badge/Platform-Termux%20%7C%20Linux-blue?style=flat-square">
</p>

---

## ✨ About CoreX

**CoreX** is a modern cyberpunk-style terminal customization tool designed to transform your default terminal into a beautiful, personalized workspace.

It supports:

- 📱 Android Termux
- 🐧 Linux distributions
- 🖥️ WSL Linux

CoreX automatically detects your environment and applies the correct configuration.

---

## ✨ Features

- 🎨 Modern cyberpunk terminal banner
- 🌈 Colorful `figlet` + `lolcat` username display
- 🐍 Python welcome animation
- ⌚ Custom terminal prompt with:
  - Current Time
  - Date
  - Username
  - Working Directory
- 🖥️ Cross-platform support
- ⚡ Lightweight and fast
- 🔧 Automatic backup & restore
- 🛡️ Safe uninstall option
- 🚀 Easy installation

---

# 📦 Installation

## 📱 Termux Installation

### 1. Update Packages

```bash
pkg update -y && pkg upgrade -y
```

### 2. Install Dependencies

```bash
pkg install -y git bash python figlet ruby
```

Install lolcat:

```bash
gem install lolcat
```

### 3. Clone Repository

```bash
git clone https://github.com/AmitDas4321/CoreX.git
```

### 4. Enter Directory

```bash
cd CoreX
```

### 5. Run Installer

```bash
chmod +x install.sh
./install.sh
```

Restart Termux:

```bash
exec bash
```

---

# 🐧 Linux Installation

Supported distributions:

- Ubuntu
- Debian
- Kali Linux
- Arch Linux
- WSL

### Install Dependencies

Ubuntu/Debian:

```bash
sudo apt update

sudo apt install -y git bash python3 figlet ruby
```

Install lolcat:

```bash
sudo gem install lolcat
```

### Clone CoreX

```bash
git clone https://github.com/AmitDas4321/CoreX.git
```

Open folder:

```bash
cd CoreX
```

Run installer:

```bash
chmod +x install.sh
./install.sh
```

Restart terminal:

```bash
exec bash
```

---

# 🗑️ Uninstall

Remove CoreX and restore your original terminal configuration:

```bash
chmod +x uninstall.sh
./uninstall.sh
```

CoreX automatically restores your previous:

- Termux bash configuration
- Linux bash configuration
- Custom files

---

# 📁 Project Structure

```
CoreX/
│
├── install.sh          # Universal installer
├── uninstall.sh        # Universal uninstaller
├── bash.bashrc         # Terminal customization
├── wlc.py              # Welcome animation
├── LICENSE
└── README.md
```

---

# 🎯 Requirements

## Termux

- Latest Termux
- Bash
- Python
- Figlet
- Lolcat

## Linux

- Bash shell
- Python3
- Figlet
- Lolcat

---

# 🖥️ Supported Platforms

| Platform | Support |
|----------|---------|
| Termux Android | ✅ |
| Ubuntu | ✅ |
| Debian | ✅ |
| Kali Linux | ✅ |
| Arch Linux | ✅ |
| WSL | ✅ |
| Windows PowerShell | ❌ (Coming Soon) |

---

# 👨‍💻 Author

**Amit Das**

GitHub:

https://github.com/AmitDas4321

---

# ⭐ Support

If you like CoreX:

- Give the repository a ⭐
- Share it with others
- Contribute improvements

---

# 📜 License

This project is licensed under the **MIT License**.