import QtQuick
import Templates as T
import StyleConstants
import ResourceProvider

Item {
    id: root

    enum Direction {
        Horizontal,
        Vertical
    }

    property Component content
    property int direction: Panel.Direction.Horizontal
    property alias layoutDirection: contentGrid.layoutDirection

    readonly property int minSize: Math.min(root.width, root.height)
    readonly property int minItemSize: minSize - contentGrid.padding * 2

    Rectangle {
        id: backgroundLoader
        anchors.fill: parent
        color: palette.dark
    }

    Grid {
        id: contentGrid
        anchors.fill: parent
        padding: root.minSize * 0.1

        columnSpacing: StyleConstants.geometry.panelSpacing
        rowSpacing: StyleConstants.geometry.panelSpacing
        verticalItemAlignment: Grid.AlignVCenter
        horizontalItemAlignment: Grid.AlignHCenter

        rows: (root.direction === Panel.Direction.Horizontal)
        columns: (root.direction === Panel.Direction.Vertical)

        Loader {
            id: contentLoader
            sourceComponent: root.content
            onLoaded: contentGrid.children = contentLoader.children
        }
    }
}
