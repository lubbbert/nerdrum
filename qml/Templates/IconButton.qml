import QtQuick
import Qt5Compat.GraphicalEffects

Item {
    id: root

    property string iconSource

    Rectangle {
        id: background
        anchors.fill: parent
        color: palette.dark
        radius: 3
    }

    Item {
        id: icon
        anchors.fill: parent
        anchors.margins: parent.height * 0.2

        Rectangle {
            id: iconColor
            anchors.fill: parent
            color: palette.light
            visible: false
        }

        Image {
            id: mask
            anchors.fill: parent
            source: root.iconSource
            visible: false
        }

        OpacityMask {
            anchors.fill: mask
            source: iconColor
            maskSource: mask
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
    }

    states: [
        State {
            name: 'focus'
            when: mouseArea.containsMouse
            PropertyChanges {
                target: iconColor
                color: palette.highlight
            }
            PropertyChanges {
                target: background
                color: palette.mid
            }
        }
    ]
}
