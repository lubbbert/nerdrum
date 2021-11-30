import QtQuick
import QtQuick.Controls
import Panels
import StyleConstants


ApplicationWindow {
    id: appWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("nerdrum")

    palette {
        highlight: StyleConstants.colors.highlight
        base: StyleConstants.colors.base
        light: StyleConstants.colors.light
        dark: StyleConstants.colors.dark
        mid: StyleConstants.colors.mid
    }

    color: palette.light

    menuBar: MenuPanel {
        id: menuPanel
        height: StyleConstants.screen.height * 0.035
    }

    Row {
        anchors.fill: parent

        ToolsPanel {
            id: toolsPanel
            width: StyleConstants.screen.width * 0.025
            height: parent.height
            Component.onCompleted: console.log(StyleConstants.screen.width, StyleConstants.screen.height)
        }

        CanvasPanel {
            id: canvasPanel
            width: parent.width - toolsPanel.width
            height: parent.height
        }
    }
}
