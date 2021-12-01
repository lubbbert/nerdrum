import QtQuick
import QtQuick.Window
import StyleConstants

Window {
    id: root

    opacity: 0.8
    color: "transparent"

    Rectangle {
        id: background

        radius: StyleConstants.screen.windowRadius
    }
}
