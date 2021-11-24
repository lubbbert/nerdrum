import QtQuick
import QtQuick.Controls
import Panels
import StyleConstants
import qtcanvas

ApplicationWindow {
    id: appWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("nerdrum")

    palette {
        highlight: StyleConstants.colors.highlight
        light: StyleConstants.colors.light
        dark: StyleConstants.colors.dark
        mid: StyleConstants.colors.mid
    }

    color: palette.light

    ToolsPanel {
        id: toolsPanel
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: 40
    }

    QtCanvas {
        id: canvasPanel
        anchors.left: toolsPanel.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
    }
}
