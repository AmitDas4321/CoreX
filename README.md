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

# ✨ About CoreX

**CoreX** is a modern cyberpunk terminal customization tool that transforms your default terminal into a beautiful and personalized workspace.

CoreX automatically detects your environment and configures your terminal.

### Supported Platforms

- 📱 Termux Android
- 🐧 Linux
- 🖥️ WSL Linux

---

# ✨ Features

- 🎨 Modern cyberpunk terminal banner
- 🌈 Colorful `figlet` + `lolcat` username display
- 🐍 Python welcome animation
- ⌚ Beautiful terminal prompt with:
  - Time
  - Date
  - Username
  - Current directory
- 🔧 Automatic backup system
- ♻️ Restore original configuration
- ⚡ Fast and lightweight
- 🌍 Cross-platform support
- 🚀 Simple installation

---

# 📦 Installation

## 1. Update Termux

```bash
pkg update -y && pkg upgrade -y
````

---

## 2. Install Dependencies

```bash
pkg install -y git bash python python2 python3 \
figlet ruby curl nano clang fish php perl \
nmap w3m hydra cowsay tar host help
```

Install Python packages:

```bash
pip install requests mechanize lolcat bs4 futures rich
```

Install Python 2 packages:

```bash
pip2 install requests mechanize bs4 futures
```

---

## 3. Clone Repository

```bash
git clone https://github.com/AmitDas4321/CoreX.git
```

---

## 4. Open Project

```bash
cd CoreX
```

---

## 5. Run Installer

Give permission:

```bash
chmod +x install.sh
```

Start installation:

```bash
./install.sh
```

During installation:

* Enter your username
* Confirm installation
* CoreX will automatically backup your terminal configuration

---

## 6. Restart Terminal

```bash
exec bash
```

---

# 🐧 Linux Installation

CoreX also supports Linux systems.

Supported:

* Ubuntu
* Debian
* Kali Linux
* Arch Linux
* WSL

---

## Install Required Packages

### Ubuntu / Debian / Kali / WSL

```bash
sudo apt update
```

```bash
sudo apt install -y git bash python3 python3-pip \
figlet ruby-full curl nano clang fish php perl \
nmap w3m hydra cowsay tar dnsutils
```

Install Python packages:

```bash
pip3 install requests mechanize lolcat bs4 futures rich
```

Install Lolcat:

```bash
sudo gem install lolcat
```

---

## Install CoreX

Clone repository:

```bash
git clone https://github.com/AmitDas4321/CoreX.git
```

Enter directory:

```bash
cd CoreX
```

Run installer:

```bash
chmod +x install.sh
./install.sh
```

Restart shell:

```bash
exec bash
```

---

# 🗑️ Uninstall

The same uninstall command works on all supported platforms.

```bash
cd CoreX
chmod +x uninstall.sh
./uninstall.sh
```

CoreX automatically detects your platform and restores the original terminal configuration.

---

# 📁 Project Structure

```
CoreX/
│
├── install.sh
├── uninstall.sh
├── bash.bashrc
├── wlc.py
├── LICENSE
└── README.md
```

---

# 🖥️ Platform Support

| Platform           | Support        |
| ------------------ | -------------- |
| Termux Android     | ✅              |
| Ubuntu             | ✅              |
| Debian             | ✅              |
| Kali Linux         | ✅              |
| Arch Linux         | ✅              |
| WSL Linux          | ✅              |
| Windows PowerShell | 🚧 Coming Soon |

---

# 🎯 Requirements

* Bash Shell
* Python / Python3
* Figlet
* Lolcat
* Git
* Internet Connection

---

# 👨‍💻 Author

**Amit Das**

GitHub:

[https://github.com/AmitDas4321](https://github.com/AmitDas4321)

---

# ⭐ Support

If you like this project:

* Give the repository a ⭐
* Share CoreX with others
* Report bugs
* Suggest improvements

---

# 📜 License

This project is licensed under the MIT License.