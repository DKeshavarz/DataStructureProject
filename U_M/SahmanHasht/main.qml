import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQml 2.3

Window {
    flags: Screen.width > Screen.height ?   Qt.NoItemFlags :Qt.FramelessWindowHint
    width: Screen.width > Screen.height ? 1980 :Screen.width
    height:  Screen.width > Screen.height ? 1080 :Screen.height
    visible: true
    title: qsTr("Sahmanhasht")
    Shortcut {
        sequence: "Ctrl+Q"
        onActivated: Qt.quit()
    }

Loader
{
     id:load
    anchors{top:parent.top;bottom:parent.bottom;left:parent.left;right:parent.right}
    source:"Map.qml"

}

}
