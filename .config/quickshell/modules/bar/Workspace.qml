import "../config"

import QtQuick
import Quickshell
import Quickshell.Hyprland

Repeater {
    property color backgroundColor: Colors.surfaceContainer

    model: Hyprland.workspaces

    Rectangle {
        width: AppearanceConfig.workspaceWidth
        height: AppearanceConfig.barHeight - AppearanceConfig.widgetHeightSubtraction
        color: backgroundColor

        Text {
            anchors.centerIn: parent

            font.family: AppearanceConfig.fontFamily
            font.pixelSize: AppearanceConfig.fontSize
            color: modelData === Hyprland.focusedWorkspace ? Colors.primary : Colors.on_surface

            text: modelData.id
        }

        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor

            onClicked: {
                Hyprland.dispatch(`workspace ${modelData.id}`);
            }
        }
    }
}
