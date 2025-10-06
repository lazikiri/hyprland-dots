import "../config"

import QtQuick
import Quickshell
import Quickshell.Hyprland

Repeater {
    model: Hyprland.workspaces

    Rectangle {
        width: AppearanceConfig.workspaceWidth
        height: AppearanceConfig.barHeight
        color: Colors.background

        Text {
            anchors.centerIn: parent

            font.family: AppearanceConfig.fontFamily
            font.pixelSize: AppearanceConfig.fontSize
            color: modelData === Hyprland.focusedWorkspace ? Colors.color1 : Colors.fontColor

            text: modelData.id
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                Hyprland.dispatch(`workspace ${modelData.id}`);
            }
        }
    }
}
