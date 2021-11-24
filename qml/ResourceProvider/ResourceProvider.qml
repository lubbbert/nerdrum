pragma Singleton

import QtQuick

QtObject {

    readonly property var toolsIcons: QtObject {
        readonly property string katakana: "qrc:/resources/icons/katakana_ka.png"
        readonly property string rectangle: "qrc:/resources/icons/rectangle.png"
    }
}
