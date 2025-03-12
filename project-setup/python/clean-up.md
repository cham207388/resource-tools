# Clean up python

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