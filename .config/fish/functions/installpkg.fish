function installpkg
    if type -q paru
        paru -Slq | fzf --multi --preview "paru -Si {1}" | xargs -ro paru -S
    end

    if type -q yay
        yay -Slq | fzf --multi --preview "yay -Si {1}" | xargs -ro yay -S
    end

    if not type -q paru; and not type -q yay
        pacman -Slq | fzf --multi --preview "pacman -Si {1}" | xargs -ro sudo pacman -S
    end
end
