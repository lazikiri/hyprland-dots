import "../config/"

import QtQuick
import Quickshell
import Quickshell.Hyprland

Row {
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

                text: modelData.id
                color: modelData === Hyprland.focusedWorkspace ? Colors.color1 : Colors.foreground
            }
        }
    }
}
