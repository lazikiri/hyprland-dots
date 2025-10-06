import "../config"
import "../services"

import QtQuick

Text {
    font.family: AppearanceConfig.fontFamily
    font.pixelSize: AppearanceConfig.fontSize
    color: Colors.color2

    text: Time.time
}
