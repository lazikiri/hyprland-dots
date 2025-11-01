import "../config"

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

                color: Colors.surface

                // Left
                Row {
                    anchors {
                        verticalCenter: parent.verticalCenter
                        left: parent.left
                        leftMargin: AppearanceConfig.barMargin
                    }

                    spacing: AppearanceConfig.barSpacing

                    Network {}
                    Seperator {}
                    SysTray {}
                    Seperator {}
                }

                // Middle
                Row {
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }

                    Workspace {}
                    // PowerProfile {}
                }

                // Right
                Row {
                    anchors {
                        verticalCenter: parent.verticalCenter
                        right: parent.right
                        rightMargin: AppearanceConfig.barMargin
                    }

                    spacing: AppearanceConfig.barSpacing

                    Seperator {}
                    Audio {}
                    Seperator {}
                    Battery {}
                    Seperator {}
                    Clock {}
                    Seperator {}
                }
            }
        }
    }
}
