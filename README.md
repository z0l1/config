hi. public repo for my configs

## Table of Contents
* [Editors](#editors)
  * [VS Code](#vs-code)
  * [Vim](#vim)
* [Bash](#scripts)
 
 ---


## Editors

#### Zed
- [settings.json](zed/settings.json)
  - `zed: open settings file`
- [keybindings.json](zed/keymap.json)
  - `zed: open keymap file`

#### VS Code

- [settings.json](vscode/settings.json)
  - `Preferences: Open User Settings`
- [keybindings.json](vscode/keybindings.json)
  - `Preferences: Open Keyboard Shortcuts`

#### Vim

- [.vimrc](vim/.vimrc)
  - `~/.vimrc`
 
---

  
## Bash
- [.bashrc](sh/.bashrc)
  - `~/.bashrc`
- [setnodepath.sh](sh/setnodepath.sh)

  
A noob bash script for switching between node versions without Admin Rights / Privileges on your PC (with git bash installed).

Modifying system PATH is not an option but modifying user PATH is.

I made an alias in my `~/.bashrc` so it is simpler to use:
```
alias setnode "source /path/to/script.sh"
```
