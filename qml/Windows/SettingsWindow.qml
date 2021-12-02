pragma Singleton

import QtQuick
import StyleConstants
import Templates as T

T.ModalWindow {
    id: root

    width: StyleConstants.screen.width * 0.25
    height: StyleConstants.screen.height * 0.50
}
