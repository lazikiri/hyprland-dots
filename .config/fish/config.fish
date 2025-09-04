function fish_greeting
    fastfetch
end

alias ls='eza -al --color=always --group-directories-first --icons'
alias lt='eza -aT --color=always --group-directories-first --icons'

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'
