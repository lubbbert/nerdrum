pragma Singleton

import QtQuick

QtObject {

    readonly property var toolsIcons: QtObject {
        readonly property string katakana: "qrc:/resources/icons/katakana_ka.png"
        readonly property string rectangle: "qrc:/resources/icons/rectangle.png"
    }

    readonly property var menuIcons: QtObject {
        readonly property string save: "qrc:/resources/icons/save.png"
        readonly property string settings: "qrc:/resources/icons/settings.png"
    }
}
