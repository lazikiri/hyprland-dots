import "../config"

import QtQuick
import Quickshell
import Quickshell.Wayland

Text {
    font.family: AppearanceConfig.fontFamily
    font.pixelSize: AppearanceConfig.fontSize
    color: Colors.color6

    text: ToplevelManager.activeToplevel.title
}
