# 📌 Pyenv Installation & Management Guide

- [📌 Pyenv Installation \& Management Guide](#-pyenv-installation--management-guide)
  - [1️⃣ Install Pyenv](#1️⃣-install-pyenv)
  - [2️⃣ Install Python Versions](#2️⃣-install-python-versions)
  - [3️⃣ Use Different Python Versions](#3️⃣-use-different-python-versions)
  - [4️⃣ Manage Virtual Environments with Pyenv](#4️⃣-manage-virtual-environments-with-pyenv)
  - [5️⃣ Ensure Poetry Uses Pyenv](#5️⃣-ensure-poetry-uses-pyenv)
  - [6️⃣ Remove Unwanted Python Versions](#6️⃣-remove-unwanted-python-versions)
  - [7️⃣ Use Pyenv in VS Code](#7️⃣-use-pyenv-in-vs-code)
  - [✅ Final Check](#-final-check)
- [🚀 Now You're a Pyenv Pro!](#-now-youre-a-pyenv-pro)


## 1️⃣ Install Pyenv

| Step | Command |
|------|---------|
| **Install Pyenv using Homebrew** | `brew install pyenv` |
| **Add Pyenv to shell configuration (Zsh)** | `echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc` |
| **Add Pyenv to PATH** | `echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc` |
| **Initialize Pyenv** | `echo 'eval "$(pyenv init --path)"' >> ~/.zshrc` |
| **Apply changes** | `source ~/.zshrc` |

---

## 2️⃣ Install Python Versions

| Step | Command |
|------|---------|
| **List available Python versions** | `pyenv install --list` |
| **Install a specific Python version (e.g., 3.11.6)** | `pyenv install 3.11.6` |
| **Check installed Python versions** | `pyenv versions` |

---

## 3️⃣ Use Different Python Versions

| Task | Command |
|------|---------|
| **Set system-wide (global) Python version** | `pyenv global 3.11.6` |
| **Set project-specific (local) Python version** | `pyenv local 3.12.1` |
| **Temporarily switch Python version for current session** | `pyenv shell 3.10.9` |

---

## 4️⃣ Manage Virtual Environments with Pyenv

| Task | Command |
|------|---------|
| **Install Pyenv Virtualenv plugin** | `brew install pyenv-virtualenv` |
| **Enable Pyenv Virtualenv in shell** | `echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc` |
| **Create a virtual environment (e.g., `myenv`)** | `pyenv virtualenv 3.11.6 myenv` |
| **List virtual environments** | `pyenv virtualenvs` |
| **Activate a virtual environment** | `pyenv activate myenv` |
| **Deactivate the current virtual environment** | `pyenv deactivate` |
| **Assign a virtual environment to a project** | `pyenv local myenv` |

---

## 5️⃣ Ensure Poetry Uses Pyenv

| Task | Command |
|------|---------|
| **Set Poetry to use Pyenv Python** | `poetry env use $(pyenv which python)` |
| **Check Poetry environment info** | `poetry env info` |

---

## 6️⃣ Remove Unwanted Python Versions

| Task | Command |
|------|---------|
| **Uninstall a specific Python version** | `pyenv uninstall 3.10.9` |
| **List installed versions before cleanup** | `pyenv versions` |

---

## 7️⃣ Use Pyenv in VS Code

| Task | Steps |
|------|--------|
| **Select Python Interpreter** | **VS Code → Cmd + Shift + P → "Python: Select Interpreter"** |
| **Choose Pyenv Python** | `/Users/your_user/.pyenv/versions/3.11.6/bin/python` |
| **Make it default for the project** | Add to `.vscode/settings.json`: <br> ```json { "python.defaultInterpreterPath": "/Users/your_user/.pyenv/versions/3.11.6/bin/python" } ``` |

---

## ✅ Final Check

| Task | Command |
|------|---------|
| **Check active Python version** | `python --version` |
| **Verify Pyenv is working** | `pyenv versions` |
| **Check which Python is being used** | `pyenv which python` |

---

# 🚀 Now You're a Pyenv Pro!