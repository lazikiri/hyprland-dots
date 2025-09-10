function cleanup
    if type -q paru
        paru -Rns (paru -Qtdq)
    end

    if type -q yay
        yay -Rns (yay -Qtdq)
    end

    if not type -q paru; and not type -q yay
        sudo pacman -Rns(pacman -Qtdq)
    end

    if type -q flatpak
        flatpak uninstall --unused
    end
end
