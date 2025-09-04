function fish_greeting
    fastfetch
end

alias ls='eza -al --color=always --group-directories-first --icons'
alias lt='eza -aT --color=always --group-directories-first --icons'

alias cat='bat --style=full'
alias fzf='fzf --style full --color 16 --layout=reverse --preview="bat -p --color=always {}"'
alias lsblk='lsblk | bat --style=plain -l conf'

alias installpkg='paru -Slq | fzf --multi --preview "paru -Si {1}" | xargs -ro paru -S'
alias uninstallpkg='paru -Qq | fzf --multi --preview "paru -Si {1}" | xargs -ro paru -Rns'
alias update='paru -Syu'

alias grubupdate='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias cleanup='sudo paru -Rns (paru -Qtdq)'
