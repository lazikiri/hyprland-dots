import "../config"
import "../widgets"

import QtQuick
import Quickshell

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
                    anchors.left: parent.left

                    SysTrayWidget {}
                }

                // Middle
                Row {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.centerIn: parent

                    WorkspaceWidget {}
                }

                // Left
                Row {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    // anchors.rightMargin: 20
                    anchors.rightMargin: AppearanceConfig.barMargin
                    spacing: AppearanceConfig.barSpacing

                    AudioWidget {}

                    BatteryWidget {}

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
