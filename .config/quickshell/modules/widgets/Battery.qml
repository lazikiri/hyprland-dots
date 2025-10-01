import "../config"

import QtQuick
import Quickshell
import Quickshell.Io

Text {
    id: battery

    font.family: AppearanceConfig.fontFamily
    font.pixelSize: AppearanceConfig.fontSize
    color: Colors.color3

    Process {
        id: capacityProc

        command: ["cat", "/sys/class/power_supply/BAT1/capacity"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: {
                let percentage = parseInt(this.text.trim())
                battery.text = "󱊣 " + percentage + "%"
            }
        }
    }

    Timer {
        interval: 15000
        running: true
        repeat: true
        onTriggered: capacityProc.running = true
    }
}
