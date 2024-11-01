#!/bin/bash

# Function to add helper script to shell config
add_to_shell_config() {
    local shell_rc="$1"
    echo 'source ~/.git-helper.sh' >> "$shell_rc"
    echo 'function git() { if [[ $1 == "-h" ]]; then command git help "${@:2}"; else command git "$@"; fi }' >> "$shell_rc"
}

create_git_config() {
    cat > ~/.gitconfig << 'EOL'
[alias]
    # Status shortcuts
    s = status -s
    st = status

    # Commit shortcuts
    c = commit
    cm = commit -m
    ca = commit --amend
    cane = commit --amend --no-edit

    # Branch shortcuts
    b = branch
    ba = branch -a
    bd = branch -d
    bD = branch -D
    
    # Checkout shortcuts
    co = checkout
    cob = checkout -b
    
    # Pull/Push shortcuts
    p = push
    pf = push --force-with-lease
    pl = pull
    plr = pull --rebase
    
    # Rebase shortcuts
    rb = rebase
    rbi = rebase -i
    rbc = rebase --continue
    rba = rebase --abort
    
    # Log shortcuts
    l = log --oneline
    lg = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
    
    # Stash shortcuts
    sh = stash
    shp = stash pop
    shl = stash list
    sha = stash apply
    
    # Reset shortcuts
    r = reset
    rh = reset --hard
    rs = reset --soft
    
    # Diff shortcuts
    d = diff
    dc = diff --cached
    
    # Custom browser opener command
    openrepo = "!f() { \
        remote_url=$(git remote get-url origin); \
        if [[ $remote_url == *'@'* ]]; then \
            url=$(echo $remote_url | sed 's/:/\\//' | sed 's/git@/https:\\/\\//' | sed 's/.git$//'); \
        else \
            url=$remote_url; \
        fi; \
        if [[ $OSTYPE == 'darwin'* ]]; then \
            open $url; \
        elif [[ $OSTYPE == 'linux-gnu'* ]]; then \
            xdg-open $url; \
        elif [[ $OSTYPE == 'msys'* || $OSTYPE == 'cygwin'* ]]; then \
            start $url; \
        fi; \
    }; f"

    # Help flag for all aliases
    help = "!f() { \
        cmd=$1; \
        if git config --get-regexp ^alias\\.$cmd$ > /dev/null; then \
            actual_cmd=$(git config --get alias.$cmd); \
            echo \"git $cmd is aliased to: git $actual_cmd\"; \
        else \
            echo \"No alias found for: git $cmd\"; \
        fi \
    }; f"

[help]
    autocorrect = 1

[color]
    ui = auto

[core]
    editor = vim
    whitespace = trailing-space,space-before-tab
    autocrlf = input

[pull]
    rebase = true

[push]
    default = current
EOL
}

create_helper_script() {
    cat > ~/.git-helper.sh << 'EOL'
#!/bin/bash

# Function to show the actual git command for any alias
git_help() {
    if [ "$1" = "-h" ]; then
        shift
        git help "$@"
    fi
}
EOL
    chmod +x ~/.git-helper.sh
}

# Main installation
echo "Installing advanced Git configuration..."

# Create git config
create_git_config

# Create helper script
create_helper_script

# Detect shell and update appropriate config file
case "$SHELL" in
    */zsh)
        add_to_shell_config ~/.zshrc
        source_file=~/.zshrc
        ;;
    */bash)
        add_to_shell_config ~/.bashrc
        source_file=~/.bashrc
        ;;
    *)
        echo "Unsupported shell: $SHELL"
        exit 1
        ;;
esac

echo "Installation complete! Please restart your terminal or run:"
echo "source $source_file"

echo "
Usage examples:
- git s              # Short status
- git cm \"message\"   # Commit with message
- git lg             # Pretty log with graph
- git openrepo       # Open repository in browser
- git -h <command>   # Show help for any command
"