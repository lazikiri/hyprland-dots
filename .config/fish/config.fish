zoxide init fish | source

alias cd='z'
alias cdi='zi'
alias ls='eza -al --color=always --group-directories-first --icons'
alias lt='eza -aT --color=always --group-directories-first --icons'
alias cat='bat --style=full'
alias lsblk='lsblk | bat --style=plain -l conf'

alias fzf='fzf --style full --color 16 --layout=reverse --preview="bat -p --color=always {}"'
alias neofetch='fastfetch'
alias grubupdate='sudo grub-mkconfig -o /boot/grub/grub.cfg'
