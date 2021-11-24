import QtQuick

Item {
    id: root

    Rectangle {
        id: backgroundLoader
        anchors.fill: parent
        clip: true
        color: palette.dark
    }

    property Component content

    Loader {
        id: contentLoader
        anchors.fill: parent
        anchors.margins: Math.min(parent.width, parent.height) * 0.1
        sourceComponent: root.content
    }
}
