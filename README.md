# dotfiles

Dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Quick Start

### Install chezmoi and apply these dotfiles in one step

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply Incognitux
```

### Or, if chezmoi is already installed

```sh
chezmoi init --apply Incognitux
```

### Update dotfiles after changes have been pushed

```sh
chezmoi update
```

## Common Commands

| Command | Description |
|---|---|
| `chezmoi add <file>` | Track a new file |
| `chezmoi edit <file>` | Edit a tracked file |
| `chezmoi diff` | Preview changes before applying |
| `chezmoi apply` | Apply changes to your home directory |
| `chezmoi cd` | Open a shell in the chezmoi source directory |
| `chezmoi update` | Pull latest changes and apply them |

---

## 📦 Complete Package List

### Shell & Terminal Environment

| Package | Purpose | Source |
|---------|---------|--------|
| `zsh` | Shell | Base |
| `zinit` | Zsh plugin manager | `.zshrc` |
| `zsh-history-substring-search` | History search | `.zshrc` |
| `zdharma-continuum/fast-syntax-highlighting` | Syntax highlighting | `.zshrc` |
| `zsh-users/zsh-completions` | Completions | `.zshrc` |
| `zsh-users/zsh-autosuggestions` | Autosuggestions | `.zshrc` |
| `starship` | Prompt | `.zshrc`, `starship.toml` |
| `zoxide` | Directory jumper | `.zshrc` |
| `atuin` | History sync | `.zshrc`, `atuin/config.toml` |
| `nvm` | Node version manager | `.zshrc` |
| `bun` | JS runtime | `.zshrc` |
| `pyenv` | Python version manager | `.zshrc` |
| `headroom` | LLM proxy | `.zshrc` |
| `lmstudio` (lms) | Local LLM | `.zshrc` |
| `lsd` | Modern `ls` | `.zshrc` alias |
| `fzf` | Fuzzy finder | Implied (telescope) |
| `ripgrep` | Search | Implied (telescope) |
| `fd` | File finder | Implied (telescope) |
| `bat` | Cat replacement | Implied (lsd) |
| `jq` | JSON processor | `update-pkgbuild` script |

### Window Managers & Compositors

| Package | Purpose | Source |
|---------|---------|--------|
| `niri` | Wayland compositor | `niri/config.kdl` |
| `hyprpaper` | Wallpaper daemon | `hypr/hyprpaper.conf` |
| `waybar` | Status bar | Referenced in niri |
| `kanshi` | Display management | Implied |
| `wlr-randr` | Output management | Implied |
| `gammastep` | Night light | Implied |

### Terminal Emulators

| Package | Purpose | Source |
|---------|---------|--------|
| `ghostty` | Terminal | Referenced in niri/hypr rules |

### Fonts

| Package | Purpose | Source |
|---------|---------|--------|
| `ttf-fira-mono` | Monospace font | `ghostty` config |
| `ttf-space-mono-nerd` | Window frame font | `ghostty` config |

### Neovim Ecosystem

#### Plugin Manager & Core

- `lazy.nvim` - Plugin manager
- `NvChad` - Base config
- `mason.nvim` - LSP/DAP/Linter installer

#### Plugins (from `lazy-lock.json`)

| Plugin | Purpose |
|--------|---------|
| `nvim-lspconfig` | LSP configs |
| `nvim-treesitter` | Syntax highlighting |
| `nvim-cmp` | Completion engine |
| `cmp-nvim-lsp` | LSP completion source |
| `cmp-buffer` | Buffer completion |
| `cmp-async-path` | Path completion |
| `cmp-nvim-lua` | Lua API completion |
| `cmp_luasnip` | Snippet completion |
| `LuaSnip` | Snippet engine |
| `friendly-snippets` | Snippet collection |
| `conform.nvim` | Formatting |
| `gitsigns.nvim` | Git signs |
| `harpoon` | File marks |
| `telescope.nvim` | Fuzzy finder |
| `nvim-tree.lua` | File explorer |
| `nvim-web-devicons` | Icons |
| `which-key.nvim` | Key hints |
| `nvim-autopairs` | Auto pairs |
| `indent-blankline.nvim` | Indent guides |
| `plenary.nvim` | Lua utilities |
| `base16-nvim` | Colorscheme base |
| `base46` | Theme engine |
| `volt` | UI components |
| `ui` | UI components |
| `menu` | Menu component |
| `minty` | Color picker |
| `typewriter` | Typewriter mode |
| `RRethy/base16-nvim` | Custom colorscheme base |

#### LSP Servers (from `lspconfig.lua`)

| Server | Language |
|--------|----------|
| `html` | HTML |
| `cssls` | CSS |
| `clangd` | C/C++ |
| `biome` | JS/TS/JSON |
| `ruby_lsp` | Ruby |
| `pug` | Pug templates |
| `kotlin_language_server` | Kotlin |
| `omnisharp` | C# |
| `qmlls` | QML |
| `rust_analyzer` | Rust |
| `ruff` | Python linting |

#### Treesitter Parsers (from `init.lua`)

`vim`, `lua`, `vimdoc`, `html`, `css`, `rust`, `c`, `cpp`, `c_sharp`, `kotlin`, `javascript`, `typescript`, `json`, `python`, `ruby`, `pug`

### System Utilities & Daemons

| Package | Purpose | Source |
|---------|---------|--------|
| `intel-undervolt` | CPU undervolting | `intel-undervolt.conf` |
| `keyd` | Key remapping | `keyd/default.conf` |
| `pipewire` | Audio server | System |
| `wireplumber` | PipeWire session manager | Implied |
| `dbus` | IPC | System |

### Applications (from window rules & configs)

| Package | Purpose |
|---------|---------|
| `thunderbird` | Email |
| `firefox` | Browser |
| `steam` | Gaming |
| `pavucontrol` | Audio control |
| `nm-connection-editor` | Network |
| `gnome-control-center` | Settings |
| `gnome-calculator` | Calculator |
| `nautilus` | Files |
| `xdg-desktop-portal` | Portal |
| `sptlrx` | Spotify lyrics |

### Screenshot & Recording

| Package | Purpose |
|---------|---------|
| `grim` | Screenshot |
| `slurp` | Region selection |
| `grimblast` | Screenshot wrapper |
| `wl-clipboard` | Clipboard |
| `wtype` | Type simulation |
| `wf-recorder` | Screen recording (implied) |

### Qt/KDE Integration

| Package | Purpose |
|---------|---------|
| `qt6ct` | Qt6 theming |
| `qt6-base` | Qt6 core |
| `qt6-5compat` | Qt5 compat |
| `qt6-svg` | SVG support |
| `qt6-networkauth` | OAuth |
| `qt6-imageformats` | Image formats |

### PrismLauncher Build Dependencies (from `PKGBUILD`)

| Runtime Deps | Build Deps |
|--------------|------------|
| `qt6-base` | `git` |
| `qt6-5compat` | `cmake` |
| `qt6-svg` | `extra-cmake-modules` |
| `qt6-networkauth` | `java-environment>=8` |
| `qt6-imageformats` | `vulkan-headers` |
| `java-runtime` | |
| `zlib` | |
| `quazip-qt6` | |
| `tomlplusplus` | |
| `cmark` | |
| `gamemode` | |
| `libarchive` | |
| `qrencode` | |

### Language Runtimes (from PATH exports)

| Runtime | Manager |
|---------|---------|
| Node.js | `nvm` |
| Bun | `bun` |
| Go | Direct |
| Ruby | `gem` / system |
| Python | `pyenv` |

### DankMaterialShell Plugins (from `plugin_settings.json`)

- `dankLauncherKeys` - App launcher
- `emojiLauncher` - Emoji picker
- `lyricsOnPanel` - Music lyrics
- `grimblast` - Screenshots
- `screenshotToggle` - Screenshot UI
- `dankKDEConnect` - KDE Connect
- `displayMirror` - Display mirroring
- `formatColorPicker` / `dms-color-picker` - Color pickers
- `niriScreenshot` / `dms-niri-screenshot` - Niri screenshots
- `screenRecorder` - Recording
- `bongoCat` - Animated cat
- `typingSounds` - Key sounds
- `dankscale` - Scale UI
- `chargingMode` - Battery charging

### Build Tools (from `update-pkgbuild` script)

- `nvchecker` - Version checking
- `nvcmp` - Version comparison
- `makepkg` - Arch package building
- `extra-x86_64-build` - Clean chroot builds
- `nvtake` - Update nvchecker database
- `updpkgsums` - Update checksums

---

## 🚀 Quick Install Commands for New Laptop

### Arch/CachyOS (pacman + paru)

```bash
# Core system
sudo pacman -S zsh starship zoxide atuin nvm bun pyenv \
  niri hyprpaper waybar kanshi wlr-randr gammastep \
  ghostty \
  intel-undervolt keyd pipewire wireplumber \
  grim slurp grimblast wl-clipboard wtype wf-recorder \
  qt6ct qt6-base qt6-5compat qt6-svg qt6-networkauth qt6-imageformats \
  sptlrx \
  thunderbird firefox steam \
  pavucontrol nm-connection-editor gnome-control-center \
  gnome-calculator nautilus \
  xdg-desktop-portal \
  fzf ripgrep fd bat lsd jq \
  ttf-fira-mono ttf-space-mono-nerd \
  git cmake extra-cmake-modules java-environment vulkan-headers \
  quazip-qt6 tomlplusplus cmark gamemode libarchive qrencode \
  nvchecker

# AUR packages
paru -S zinit-git nvm pyenv headroom lmstudio \
  prismlauncher-offline \
  DankMaterialShell-git \
  typing-sounds-git \
  nvchecker nvcmp
```

### Fonts

```bash
# Nerd Fonts
sudo pacman -S ttf-fira-mono ttf-space-mono-nerd
```

### Neovim Setup

```bash
# After installing neovim and lazy.nvim will auto-install plugins on first run
# Ensure these are available for Mason:
# npm, cargo, go, pip, gem, bun
```

---

## 📋 Migration Checklist

- [ ] Install base packages (shell, terminal, WM)
- [ ] Install language runtimes (nvm, bun, pyenv, go, ruby)
- [ ] Install Neovim + run `:MasonInstallAll` for LSPs
- [ ] Install fonts (ttf-fira-mono, ttf-space-mono-nerd)
- [ ] Apply chezmoi dotfiles: `chezmoi init --apply Incognitux`
- [ ] Run `lazy.nvim` sync in Neovim
- [ ] Run `mason.nvim` to install LSP servers
- [ ] Configure `intel-undervolt` and `keyd` services
- [ ] Set up `atuin` sync: `atuin login`
- [ ] Configure `headroom` if using LLM proxy
- [ ] Build/install `prismlauncher-offline` from PKGBUILD if needed