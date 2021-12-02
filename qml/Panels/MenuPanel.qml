import QtQuick
import ResourceProvider
import Templates as T
import Windows

T.Panel {
    id: menuPanel

    direction: T.Panel.Direction.Horizontal

    content: Repeater {
        model: ListModel {
            id: m
            Component.onCompleted: {
                append({
                           "iconSource": ResourceProvider.menuIcons.save,
                           "fn": function () {
                               console.log("1")
                           }
                       })
                append({
                           "iconSource": ResourceProvider.menuIcons.settings,
                           "fn": function () {
                               console.log("2")
                           }
                       })
            }
        }

        delegate: T.IconButton {
            width: menuPanel.minItemSize
            height: menuPanel.minItemSize
            iconSource: model.iconSource
            onClicked: {
                //                (m.get(1))
                for (var i in m.get(1))
                    console.log(i, model.iconSource, model.fn)
            }
            //            Component.onCompleted: onClicked.connect(model.onClicked)
        }
    }
}
