import "config"
import "widgets"

import QtQuick
import Quickshell
import Quickshell.Io

Scope {
    id: root
    property string time

    Variants {
        model: Quickshell.screens

        delegate: Component {
            PanelWindow {
                required property var modelData
                screen: modelData

                anchors {
                    top: true
                    left: true
                    right: true
                }

                implicitHeight: AppearanceConfig.barHeight

                color: Colors.background

                Row {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.centerIn: parent

                    Workspaces {}
                }

                Row {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    spacing: AppearanceConfig.barSpacing

                    Battery {}

                    ClockWidget {
                        font.family: AppearanceConfig.fontFamily
                        font.pixelSize: AppearanceConfig.fontSize
                        color: Colors.color2
                    }
                }
            }
        }
    }
}
