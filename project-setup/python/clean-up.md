# Clean up python

- [Clean up python](#clean-up-python)
  - [Step 1: Check Installed Python Versions](#step-1-check-installed-python-versions)
  - [Step 2: Uninstall Python Installed via Homebrew](#step-2-uninstall-python-installed-via-homebrew)
  - [Step 3: Remove Python Installed via the Official Installer](#step-3-remove-python-installed-via-the-official-installer)
  - [Step 4: Remove Pyenv (If Installed)](#step-4-remove-pyenv-if-installed)
  - [Step 5: Restart \& Verify Python is Removed](#step-5-restart--verify-python-is-removed)
  - [Setup pyenv](#setup-pyenv)


## Step 1: Check Installed Python Versions

```bash
which -a python python3
python3 --version
```

## Step 2: Uninstall Python Installed via Homebrew

```bash
brew list | grep python
brew uninstall --ignore-dependencies python@3.11
brew uninstall --ignore-dependencies python@3.12
or
brew uninstall --ignore-dependencies $(brew list | grep python)
brew cleanup
```

## Step 3: Remove Python Installed via the Official Installer

```bash
sudo rm -rf /Library/Frameworks/Python.framework
sudo rm -rf /System/Library/Frameworks/Python.framework
sudo rm -rf /usr/local/bin/python*
sudo rm -rf /usr/local/bin/pip*
sudo rm -rf /usr/bin/python3
```

## Step 4: Remove Pyenv (If Installed)
```bash
brew uninstall pyenv
rm -rf ~/.pyenv
```

## Step 5: Restart & Verify Python is Removed

```bash
exec zsh
```

## Setup pyenv

[pyenv](./pyenv.md)