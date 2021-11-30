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
        height: 40
    }

    Row {
        anchors.fill: parent

        ToolsPanel {
            id: toolsPanel
            width: 40
            height: parent.height
        }

        CanvasPanel {
            id: canvasPanel
            width: parent.width - toolsPanel.width
            height: parent.height
        }
    }
}
