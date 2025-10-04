import "../config"
import "../services"

import QtQuick
import Quickshell
import Quickshell.Services.Pipewire

Text {
    font.family: AppearanceConfig.fontFamily
    font.pixelSize: AppearanceConfig.fontSize
    color: Colors.color4

    text: " " + Audio.volumeLevel

    MouseArea {
        anchors.fill: parent

        onClicked: {
            Quickshell.execDetached(["kitty", "--", "wiremix"]);
        }
    }
}
