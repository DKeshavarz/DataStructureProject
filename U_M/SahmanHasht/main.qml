import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQml 2.3

Window {
    width: 1000
    height: 600
    visible: true
    title: qsTr("Sahmanhasht")
     Button
    {
        anchors.centerIn:parent
        text:"go to map"
         onClicked: load.source="Map.qml"


    }
Loader
{
     id:load
       anchors{top:parent.top;bottom:parent.bottom;left:parent.left;right:parent.right}

}

}
