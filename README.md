# 🚀 Advanced Git Configuration

A user-friendly, feature-rich Git configuration that supercharges your Git workflow with powerful aliases and custom commands. Perfect for both beginners and advanced users!

## ✨ Features

- 💡 Smart shorthand commands for common Git operations
- 🌐 Browser-based repository opener (`git openrepo`)
- ❓ Built-in help system with `-h` flag
- 🔄 Cross-platform support (macOS, Linux, Windows)
- 🛠 Easy one-line installation

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/yourusername/advanced-git-config

# Navigate to the directory
cd advanced-git-config

# Make the installer executable
chmod +x install.sh

# Run the installer
./install.sh

# Reload your shell configuration
source ~/.zshrc  # or source ~/.bashrc for Bash users
```

## 📚 Command Reference

### Common Shortcuts

| Alias | Full Command | Description |
|-------|--------------|-------------|
| `s` | `status -s` | Compact status view |
| `st` | `status` | Full status view |
| `c` | `commit` | Create a commit |
| `cm` | `commit -m` | Commit with message |
| `ca` | `commit --amend` | Amend previous commit |
| `cane` | `commit --amend --no-edit` | Amend without editing message |

### Branch Management

| Alias | Full Command | Description |
|-------|--------------|-------------|
| `b` | `branch` | List branches |
| `ba` | `branch -a` | List all branches (including remote) |
| `bd` | `branch -d` | Delete branch (safe) |
| `bD` | `branch -D` | Force delete branch |
| `co` | `checkout` | Switch branches |
| `cob` | `checkout -b` | Create and switch to new branch |

### Remote Operations

| Alias | Full Command | Description |
|-------|--------------|-------------|
| `p` | `push` | Push changes |
| `pf` | `push --force-with-lease` | Safe force push |
| `pl` | `pull` | Pull changes |
| `plr` | `pull --rebase` | Pull with rebase |

### History and Logs

| Alias | Full Command | Description |
|-------|--------------|-------------|
| `l` | `log --oneline` | Compact log view |
| `lg` | `log --graph --pretty=format:...` | Pretty log with graph |
| `d` | `diff` | Show changes |
| `dc` | `diff --cached` | Show staged changes |

### Stash Operations

| Alias | Full Command | Description |
|-------|--------------|-------------|
| `sh` | `stash` | Stash changes |
| `shp` | `stash pop` | Apply and remove stash |
| `shl` | `stash list` | List stashes |
| `sha` | `stash apply` | Apply stash without removing |

### Special Commands

| Command | Description |
|---------|-------------|
| `git openrepo` | Open repository in default browser |
| `git -h <command>` | Show help for any command |

## 🔧 Technical Terms

| Term | Definition |
|------|------------|
| Alias | A shorthand command that represents a longer Git command |
| Remote | A version of your repository hosted on the internet or network |
| Branch | A parallel version of your repository |
| Commit | A snapshot of your repository at a specific point in time |
| Stash | A way to temporarily store modified files |
| Rebase | Reapply commits on top of another base commit |
| Force Push | Overwrite remote repository with local changes (use with caution) |
| Working Directory | The directory where your project files are located |
| Staged Changes | Files that are marked to be included in the next commit |
| Repository (Repo) | The folder that contains your project and Git history |

## 🤝 Contributing

Contributions are welcome! Feel free to:
1. Fork the repository
2. Create a feature branch
3. Submit a Pull Request

## 📝 License

This project is released under the MIT License. See the LICENSE file for details.

## 💡 Tips

1. Use `git -h <command>` to see what any alias does
2. `git openrepo` works with both HTTPS and SSH remote URLs
3. The pretty log (`git lg`) is great for visualizing branch history
4. Use `git pf` instead of `git push -f` for safer force pushing

## ⚠️ Backup Reminder

Before installing, the script will create new Git configurations. While it shouldn't override your existing aliases, it's always good practice to backup your existing `.gitconfig` file:

```bash
cp ~/.gitconfig ~/.gitconfig.backup
```

## 🆘 Troubleshooting

If you encounter any issues:

1. **Command not found**: Make sure you've sourced your shell configuration:
   ```bash
   source ~/.zshrc  # or ~/.bashrc for Bash
   ```

2. **openrepo not working**: Ensure you have a valid remote URL:
   ```bash
   git remote -v  # Check your remote URLs
   ```

3. **Alias conflicts**: Check for existing aliases:
   ```bash
   git config --get-regexp alias  # List all aliases
   ```

For more help, please open an issue on the GitHub repository.
