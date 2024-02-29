import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.VirtualKeyboard 2.4

Window {
    id: root
    width: 1980
    height: 1080
    visible: true
    title: qsTr("Sahmanhasht")
    Rectangle
    {

        anchors.fill:parent
        color:"#DADBDD"
        MouseArea
        {
             anchors.fill:parent
            onClicked:
            {

                var component=Qt.createComponent("M_window.qml");
                var window = component.createObject(root);
                window.show()

            }
        }
    }

 }
