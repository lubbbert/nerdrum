import QtQuick
import Qt.NerdCanvas

NerdCanvas {
    id: canvas

    MouseArea {
        id: mouseArea

        property point pressedPoint

        anchors.fill: parent
        onClicked: {

        }
        onPressed: {
            pressedPoint = Qt.point(mouseX, mouseY)
        }

        onPositionChanged: {
            if (pressed) {

            }
        }

        onReleased: {
            var releasedPoint = Qt.point(mouseX, mouseY)
            var r = Qt.rect(Math.min(pressedPoint.x, releasedPoint.x),
                            Math.min(pressedPoint.y, releasedPoint.y),
                            Math.abs(releasedPoint.x - pressedPoint.x),
                            Math.abs(releasedPoint.y - pressedPoint.y))
            canvas.addItem(r, Qt.color("white"))
        }
    }
}
