pragma Singleton

import Quickshell

Singleton {
    id: root

    property int barHeight: 34
    property int barSpacing: 30
    property int barMargin: 20

    property string fontFamily: "Firacode Nerd Font Propo"
    property int fontSize: 15

    property int workspaceWidth: 38

    property int sysTrayHeight: root.barHeight
    property int sysTrayWidth: 24
}
