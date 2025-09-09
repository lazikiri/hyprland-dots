function update
    if type -q paru
        paru -Syu
    end

    if type -q yay
        yay -Syu
    end

    if not type -q paru; and not type -q yay
        sudo pacman -Syu
    end

    if type -q flatpak
        flatpak update
    end
end
