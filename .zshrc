export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode auto      # update automatically without asking

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"


plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# Aliases
alias con1="sudo bash -c 'echo 1 >/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'"
alias con0="sudo bash -c 'echo 0 >/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'"

alias i="sudo pacman -S"
alias r="sudo pacman -Rns"
alias u="sudo pacman -Syu"
alias q="sudo pacman -Ss"

alias st="git status"
alias add="git add"
alias commit="git commit -m"
alias push="git push origin"
alias rstaged="git rm --cached"

alias ll="exa -la -g --icons"

# Key Bindings
bindkey '^H' backward-kill-word
bindkey '5~' kill-word

# fzf
source <(fzf --zsh)

# Created by `pipx` on 2024-08-10 18:20:40
export PATH="$PATH:/home/abdo/.local/bin"
