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
                    right: true
                    left: true
                }

                implicitHeight: AppearanceConfig.barHeight

                color: Colors.background

                // Left
                Row {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: AppearanceConfig.barMargin
                    spacing: AppearanceConfig.barSpacing

                    NetworkWidget {}

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
                    anchors.rightMargin: AppearanceConfig.barMargin
                    spacing: AppearanceConfig.barSpacing

                    AudioWidget {}

                    BatteryWidget {}

                    ClockWidget {}
                }
            }
        }
    }
}
