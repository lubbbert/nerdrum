pragma Singleton

import QtQuick

QtObject {
    readonly property var screen: QtObject {
        readonly property real ratio: Screen.width / Screen.height
        readonly property int menuPanelHeight: Screen.height * ratio * 0.020
        readonly property int leftPanelWidth: Screen.width * 0.020
        readonly property int rightPanelWidth: Screen.width * 0.015
        readonly property int panelSpacing: 4
        readonly property int windowRadius: 10
    }

    readonly property var colors: QtObject {
        readonly property color highlight: "#fa314a"
        readonly property color dark: "#191923"
        readonly property color base: "#95959A"
        readonly property color light: "#c7c7cF"
        readonly property color mid: "#2e2e41"
    }
}
