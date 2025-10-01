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

                ClockWidget {
                    anchors.centerIn: parent
                }
            }
        }
    }
}
