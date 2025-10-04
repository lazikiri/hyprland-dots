import "../config"

import QtQuick
import Quickshell

Text {
    font.family: AppearanceConfig.fontFamily
    font.pixelSize: AppearanceConfig.fontSize
    color: Colors.color5

    text: ""

    MouseArea {
        anchors.fill: parent

        onClicked: {
            Quickshell.execDetached(["kitty", "--", "nmtui"]);
        }
    }
}
