```
# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```
plugins=(
  git
  vi-mode
  z
  zsh-navigation-tools
  zsh-interactive-cd
)

source $ZSH/oh-my-zsh.sh

# Load Homebrew-installed zsh plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Initialize starship prompt
eval "$(starship init zsh)"
```
