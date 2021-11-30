import QtQuick
import Templates as T
import ResourceProvider

T.Panel {
    id: menuPanel

    direction: T.Panel.Direction.Horizontal

    content: Repeater {
        model: [{
                "iconSource": ResourceProvider.menuIcons.save
            }]

        delegate: T.IconButton {
            width: menuPanel.minItemSize
            height: menuPanel.minItemSize
            iconSource: modelData.iconSource
        }
    }
}
