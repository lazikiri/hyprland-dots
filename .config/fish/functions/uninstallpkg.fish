function uninstallpkg
    if type -q paru
        paru -Qqe | fzf --multi --preview "paru -Si {1}" | xargs -ro paru -Rns
    end

    if type -q yay
        yay -Qqe | fzf --multi --preview "yay -Si {1}" | xargs -ro yay -Rns
    end

    if not type -q paru; and not type -q yay
        pacman -Qqe | fzf --multi --preview "pacman -Si {1}" | xargs -ro sudo pacman -Rns
    end
end
