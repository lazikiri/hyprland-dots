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

                color: Colors.background

                // Left
                Row {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: AppearanceConfig.barMargin
                    spacing: AppearanceConfig.barSpacing

                    Network {}

                    Seperator {}

                    SysTray {}
                    
                    Seperator {}
                }

                // Middle
                Row {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.centerIn: parent

                    Workspace {}

                    // PowerProfile {}
                }

                // Left
                Row {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: AppearanceConfig.barMargin
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
