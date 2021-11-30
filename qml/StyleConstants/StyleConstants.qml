pragma Singleton

import QtQuick

QtObject {
    readonly property var screen: QtObject {
        readonly property int width: Screen.width
        readonly property int height: Screen.height
    }

    readonly property var colors: QtObject {
        readonly property color highlight: "#fa314a"
        readonly property color dark: "#191923"
        readonly property color base: "#95959A"
        readonly property color light: "#c7c7cF"
        readonly property color mid: "#2e2e41"
    }
}
