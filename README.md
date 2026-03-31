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
