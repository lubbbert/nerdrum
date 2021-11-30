import QtQuick
import Templates as T
import ResourceProvider

Item {
    id: panel

    enum Direction {
        Horizontal,
        Vertical
    }

    property Component content
    property int direction: Panel.Direction.Horizontal
    property int minSize: Math.min(panel.width, panel.height)
    readonly property int minItemSize: minSize - padding * 2
    readonly property alias padding: contentGrid.padding

    Rectangle {
        id: backgroundLoader
        anchors.fill: parent
        color: palette.dark
    }

    Grid {
        id: contentGrid
        anchors.fill: parent
        padding: panel.minSize * 0.1

        Component.onCompleted: {
            console.log("grid completed", children.length)
        }
        columnSpacing: 2
        rowSpacing: 2
        verticalItemAlignment: Grid.AlignVCenter
        horizontalItemAlignment: Grid.AlignHCenter
        rows: (panel.direction === Panel.Direction.Horizontal)
        columns: (panel.direction === Panel.Direction.Vertical)

        Loader {
            id: contentLoader
            sourceComponent: panel.content
            onLoaded: contentGrid.children = contentLoader.children
        }

        //            //                var cnt = children.length

        //            //                //                console.log("loader children = ", cnt)
        //            //                //                for (var i in contentLoader.children) {
        //            //                //                    console.log("i=", i)
        //            //                //                    console.log((contentLoader.children[i].iconSource))
        //            //                //                    contentGrid.children.push(contentLoader.children[i])
        //            //                //                }
        //            //                //                console.log(typeof (contentGrid.children))
        //            //                if (panel.direction === Panel.Direction.Vertical) {
        //            //                    console.log("panel vert")
        //            //                    //                    contentGrid.rows = cnt - 1
        //            //                    contentGrid.columns = 1
        //            //                    contentGrid.flow = Grid.TopToBottom
        //            //                } else {
        //            //                    console.log("panel horizontal")
        //            //                    contentGrid.rows = 1
        //            //                    //                    contentGrid.columns = cnt - 1
        //            //                    contentGrid.flow = Grid.LeftToRight
        //            //                }
        //            //                //contentGrid.data = contentLoader.data
        //            //                //                console.log("grid = ", contentGrid.rows, contentGrid.columns,
        //            //                //                            contentGrid.children.length)
        //            //            }
        //            //            onLoaded: {
        //            //                console.log("Loader children.length = ",
        //            //                            contentLoader.children.length)
        //            //                if (panel.direction === Panel.Direction.Vertical) {
        //            //                    console.log("panel vert")
        //            //                    //contentGrid.rows = children.length
        //            //                    contentGrid.columns = 1
        //            //                    contentGrid.verticalItemAlignment = Grid.AlignVCenter
        //            //                } else {
        //            //                    console.log("panel horizontal")
        //            //                    contentGrid.rows = 1
        //            //                    //contentGrid.columns = children.length
        //            //                    contentGrid.horizontalItemAlignment = Grid.AlignHCenter
        //            //                }
        //            //                contentGrid.children = []
        //            //                for (var i = 0; i < contentLoader.children.length; i++) {
        //            //                    contentGrid.children.push(contentLoader.children[i])
        //            //                    console.log("i=", i)
        //            //                }
        //        }
    }
}
