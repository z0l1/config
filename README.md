hi. public repo for my configs


### VSCode

#### settings.json (Preferences: Open User Settings)
```JSON
{
  "workbench.colorTheme": "Xcode Classic (Dark)",
  "editor.lineNumbers": "relative",
  "editor.indentSize": "tabSize",
  "workbench.iconTheme": "material-icon-theme",
  "totalTypeScript.hideAllTips": false,
  "totalTypeScript.hideBasicTips": false,
  // "editor.wordWrapColumn": 130,
  // "editor.wordWrap": "bounded",
  "editor.rulers": [110],
  "editor.wordWrap": "on",
  "editor.fontSize": 18,
  "window.zoomLevel": 1,

  // VIM
  "vim.leader": " ",
  "vim.vimrc.enable": true,
  "vim.visualModeKeyBindingsNonRecursive": [
    {
      "before": ["J"],
      "commands": ["editor.action.moveLinesDownAction"]
    },
    {
      "before": ["K"],
      "commands": ["editor.action.moveLinesUpAction"]
    }
  ],
  "diffEditor.codeLens": true,
  "editor.formatOnSave": true,

  "[jsonc]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "git.autofetch": true,
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "liveServer.settings.donotShowInfoMsg": true,
  "[html]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },

  "jest.runMode": {
    "coverage": true,
    "type": "on-demand"
  },
  "[scss]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "editor.fontFamily": "'GoMono Nerd Font Mono', 'Courier New', monospace",
  "gitlens.advanced.messages": {
    "suppressCreatePullRequestPrompt": true
  },
  "workbench.tree.indent": 16,
  "javascript.updateImportsOnFileMove.enabled": "always",
  "typescript.updateImportsOnFileMove.enabled": "always",
  "files.associations": {
    "*.tmpl": "html"
  },
  "terminal.integrated.fontSize": 16,
  "svelte.enable-ts-plugin": true,
  "[css]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "go.toolsManagement.autoUpdate": true,
  "explorer.fileNesting.patterns": {
    "*.ts": "${capture}.js",
    "*.js": "${capture}.js.map, ${capture}.min.js, ${capture}.d.ts",
    "*.jsx": "${capture}.js",
    "*.tsx": "${capture}.ts",
    "tsconfig.json": "tsconfig.*.json",
    "package.json": "package-lock.json, yarn.lock, pnpm-lock.yaml, bun.lockb",
    "*.templ": "${capture}_templ.go,${capture}_templ.txt",
    "pubspec.yaml": "pubspec.lock,pubspec_overrides.yaml,.packages,.flutter-plugins,.flutter-plugins-dependencies,.metadata",
    "*.dart": "${capture}.g.dart",
    "*.sqlite": "${capture}.${extname}-*",
    "*.db": "${capture}.${extname}-*",
    "*.sqlite3": "${capture}.${extname}-*",
    "*.db3": "${capture}.${extname}-*",
    "*.sdb": "${capture}.${extname}-*",
    "*.s3db": "${capture}.${extname}-*"
  },
  "git.suggestSmartCommit": false,
  "[typescriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[svelte]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "git.confirmSync": false
}
```

#### keybindings.json (Preferences: Open Keyboard Shortcuts)
```JSON
// Place your key bindings in this file to override the defaults
[
  {
    "key": "ctrl+n",
    "command": "explorer.newFile",
    "when": "explorerViewletFocus"
  },
  {
    "key": "ctrl+m",
    "command": "explorer.newFolder",
    "when": "explorerViewletFocus"
  },
  {
    "key": "Enter",
    "command": "runCommands",
    "args": {
      "commands": [
        "explorer.openAndPassFocus",
        "workbench.action.toggleSidebarVisibility"
      ]
    },
    "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsFolder && !inputFocus"
  },

  {
    "key": "ctrl+k",
    "command": "editor.action.showDefinitionPreviewHover",
    "when": "editorTextFocus"
  },
  {
    "key": "k",
    "command": "editor.action.scrollUpHover",
    "when": "editorHoverFocused"
  },
  {
    "key": "j",
    "command": "editor.action.scrollDownHover",
    "when": "editorHoverFocused"
  },
  {
    "key": "ctrl+u",
    "command": "editor.action.pageUpHover",
    "when": "editorHoverFocused"
  },
  {
    "key": "ctrl+d",
    "command": "editor.action.pageDownHover",
    "when": "editorHoverFocused"
  },

  {
    "key": "ctrl+alt+h",
    "command": "workbench.action.previousEditor"
  },
  {
    "key": "ctrl+alt+l",
    "command": "workbench.action.nextEditor"
  },

  {
    "key": "ctrl+k ctrl+i",
    "command": "-editor.action.showHover",
    "when": "editorTextFocus"
  },
  {
    "key": "ctrl+k ctrl+i",
    "command": "-workbench.action.terminal.focusHover",
    "when": "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalIsOpen || terminalFocus && terminalProcessSupported || terminalHasBeenCreated && terminalTabsFocus || terminalIsOpen && terminalTabsFocus || terminalProcessSupported && terminalTabsFocus"
  },
  {
    "key": "ctrl+j",
    "command": "-workbench.action.togglePanel"
  },
  {
    "key": "ctrl+alt+n",
    "command": "workbench.action.files.newUntitledFile"
  },
  {
    "key": "ctrl+n",
    "command": "-workbench.action.files.newUntitledFile"
  },
  {
    "key": "ctrl+shift+w",
    "command": "-workbench.action.closeWindow"
  },
  {
    "key": "ctrl+shift+w",
    "command": "workbench.action.closeActiveEditor"
  },
  {
    "key": "ctrl+w",
    "command": "-workbench.action.closeActiveEditor"
  },
  {
    "key": "f2",
    "command": "renameFile",
    "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
  },
  {
    "key": "enter",
    "command": "-renameFile",
    "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
  }
]
```


### Vim stuff

#### .vimrc
```
let leader = " "

" Remap <leader>pv to execute :Ex (Explore)
nnoremap <leader>pv :Ex<CR>

" Move selected block
" vnoremap J :m '>+1<CR>gv=gv
" vnoremap K :m '<-2<CR>gv=gv
" vnoremap J :m dp
" vnoremap K :m dkP

" Join lines and keep cursor position
nnoremap J mzJ`z

" Control + U/D for page jumps (cursor stays centered)
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
```

