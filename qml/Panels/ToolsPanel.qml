import QtQuick
import Templates as T
import ResourceProvider

T.Panel {
    id: toolsPanel

    direction: T.Panel.Direction.Vertical

    content: Repeater {
        model: [{
                "iconSource": ResourceProvider.toolsIcons.katakana
            }, {
                "iconSource": ResourceProvider.toolsIcons.rectangle
            }]

        delegate: T.IconButton {
            width: toolsPanel.minItemSize
            height: toolsPanel.minItemSize
            iconSource: modelData.iconSource
        }
    }
}
