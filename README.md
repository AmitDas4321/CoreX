<h1 align="center">
  <img src="https://img.shields.io/badge/CoreX-Termux%20Theme-6C63FF?style=for-the-badge&logo=gnu-bash">
  <br>
  CoreX
  <br>
</h1>

<p align="center">
  <strong>A Modern, Clean & Cyberpunk Termux Theme</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/github/stars/AmitDas4321/CoreX?style=flat-square">
  <img src="https://img.shields.io/github/forks/AmitDas4321/CoreX?style=flat-square">
  <img src="https://img.shields.io/github/license/AmitDas4321/CoreX?style=flat-square">
  <img src="https://img.shields.io/badge/Platform-Termux-blue?style=flat-square">
</p>

---

## ✨ Features

- 🎨 Modern cyberpunk terminal banner
- 🌈 Colorful `figlet` + `lolcat` logo
- 🐍 Python welcome animation
- ⌚ Beautiful prompt with Time, Date & Current Directory
- ⚡ Fast and lightweight
- 🔧 Easy installation
- 📱 Designed for Termux

---

## 📦 Installation

### 1. Update Termux

```bash
pkg update -y && pkg upgrade -y
```

### 2. Install Dependencies

```bash
pkg install -y git python python2 python3 bash \
figlet ruby curl nano clang fish php perl nmap \
w3m hydra cowsay tar host help

pip install requests mechanize lolcat bs4 futures rich
pip2 install requests mechanize bs4 futures
```

### 3. Clone Repository

```bash
git clone https://github.com/AmitDas4321/CoreX.git
```

### 4. Open Project

```bash
cd CoreX
```

### 5. Install Theme

```bash
cp bash.bashrc $PREFIX/etc/bash.bashrc
cp wlc.py $PREFIX/etc/wlc.py
```

### 6. Restart Termux

```bash
exec bash
```

---

## 📁 Project Structure

```
CoreX/
├── bash.bashrc
├── wlc.py
├── LICENSE
└── README.md
```

---

## 🎯 Requirements

- Latest Termux
- Python
- Bash
- Figlet
- Lolcat
- Internet Connection

---

## 👨‍💻 Author

**Amit Das**

GitHub:
https://github.com/AmitDas4321

---

## ⭐ Support

If you like this project, don't forget to give it a ⭐ on GitHub.

---

## 📜 License

This project is licensed under the MIT License.