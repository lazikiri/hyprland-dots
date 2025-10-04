import "../config"

import QtQuick
import QtQuick.Controls
import Quickshell
import Quickshell.Services.SystemTray
import Quickshell.Widgets

Repeater {
    model: SystemTray.items

    Rectangle {
        height: parent ? parent.height: AppearanceConfig.barHeight
        width: AppearanceConfig.barSpacing
        color: Colors.background

        IconImage {
            id: icon

            anchors.centerIn: parent
            height: AppearanceConfig.sysTrayWidth
            width: AppearanceConfig.sysTrayWidth

            source: modelData.icon
        }

        QsMenuAnchor {
            id: menuAnchor
            anchor.item: icon
            anchor.gravity: Edges.Bottom | Edges.Left
            menu: modelData.menu
        }

        MouseArea {
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton

            onClicked: mouse => {
                if (mouse.button === Qt.LeftButton)
                    icon.modelData.activate();
                else if (mouse.button === Qt.RightButton)
                    menuAnchor.open();
            }
        }
    }
}
