import QtQuick
import QtQuick.Controls
import Templates as T
import ResourceProvider

T.Panel {
    id: root

    content: Grid {
        id: content
        columns: 1
        columnSpacing: 1
        rowSpacing: 1
        clip: true

        Repeater {
            model: [{
                    "iconSource": ResourceProvider.toolsIcons.katakana
                }, {
                    "iconSource": ResourceProvider.toolsIcons.rectangle
                }]

            T.IconButton {
                width: content.width
                height: width
                iconSource: modelData.iconSource
            }
        }
    }
}
