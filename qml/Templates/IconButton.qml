import QtQuick
import Qt5Compat.GraphicalEffects

Item {
    id: root

    property string iconSource
    property bool holded: false
    signal clicked

    Rectangle {
        id: background
        anchors.fill: parent
        color: palette.dark
    }

    Item {
        id: icon
        anchors.fill: parent
        anchors.margins: parent.height * 0.1

        Rectangle {
            id: iconColor
            anchors.fill: parent
            color: palette.base
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
        onClicked: root.clicked()
    }

    states: [
        State {
            name: 'holded'
            when: root.holded
            PropertyChanges {
                target: iconColor
                color: palette.highlight
            }
        },

        State {
            name: 'focus'
            when: mouseArea.containsMouse
            PropertyChanges {
                target: iconColor
                color: palette.light
            }
        }
    ]
}
