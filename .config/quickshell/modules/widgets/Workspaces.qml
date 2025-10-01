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

            Text {
                anchors.centerIn: parent
                text: modelData.id
            }
        }
    }
}
