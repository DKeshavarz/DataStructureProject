import QtQuick 2.12
import QtQuick.Window 2.12
import QtQml 2.3
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.2
import QtQuick.VirtualKeyboard 2.4
import QtGraphicalEffects 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Window {
    id: m

    flags: Screen.width > Screen.height ?   Qt.NoItemFlags :Qt.FramelessWindowHint
    width: Screen.width > Screen.height ? 1980:Screen.width
     height:  Screen.width > Screen.height ? 1080 :Screen.height
    Shortcut {
        sequence: "Ctrl+Q"
        onActivated: Qt.quit()
    }


    visible: true
    title: qsTr("Sahmanhasht")
    Rectangle
           {

                anchors.fill:parent
               gradient: Gradient {GradientStop {position: 0.0 ; color: "#8EEBEC"  }
                                    GradientStop {position: 0.5 ; color: "#EE82EE"  }}


           }
    Image {
        id:l ; visible: false
        source: "Tehran_city.jpg"
        anchors{top:parent.top ; right:parent.right ; topMargin:15 ; rightMargin:700}
    }
    Timer{
        interval: 1000 ; running: true
        onTriggered:{
            l.visible=true;
        }
    }


    Rectangle {
       id:tehran; visible: false
       anchors.right:parent.right ; anchors.top:parent.top ; anchors.rightMargin:100 ; anchors.topMargin:50 ;
       width:450 ;height:65
       implicitWidth: 100
       implicitHeight: 40
       border.color: "#0000FF" ; color: a.pressed ?  "#1589FF" : "#00BFFF"
       border.width: a.pressed ? 8 : 6
       radius: 50
       Text {text:"<b>TEHRAN</b>" ;color:"white" ; anchors.centerIn: parent ; font.pixelSize:15 }
       MouseArea
       {
         id:a
         anchors.fill:parent
         onClicked:{

             var component=Qt.createComponent("M_window.qml");
             var window = component.createObject(m);
            window.show()

          }

         }
       }

    Timer{
        interval: 2000 ; running: true
        onTriggered:{
            tehran.visible=true;
        }
    }

    Rectangle {
       id:tehran1 ; visible: false
       anchors.right:parent.right ; anchors.top:tehran.bottom ; anchors.topMargin:30 ; anchors.rightMargin:100 ;
       width:450 ;height:65
       implicitWidth: 100
       implicitHeight: 40
       border.color: "#0000A5" ; color: "#2916F5"
       border.width: a1.pressed ? 8 : 6
       radius: 50
       Text {text:"<b>ZANJAN</b>" ;color:"white" ; anchors.centerIn: parent ; font.pixelSize:15 }
       MouseArea
       {
         id:a1
         anchors.fill:parent

       }
       Image {
           id: lock
           source: "lock.png"
           anchors{top:parent.top ; right:parent.right ; topMargin:15 ; rightMargin:30}
       }
       }
    Timer{
        interval: 2500 ; running: true
        onTriggered:{
            tehran1.visible=true;
        }
    }
    Rectangle {
       id:tehran2 ; visible: false
       anchors.right:parent.right ; anchors.top:tehran1.bottom ; anchors.topMargin:30 ; anchors.rightMargin:100 ;
       width:450 ;height:65
       implicitWidth: 100
       implicitHeight: 40
       border.color: "#0000A5" ; color: "#2916F5"
       border.width: a2.pressed ? 8 : 6
       radius: 50
       Text {text:"<b>SHIRAZ</b>" ;color:"white" ; anchors.centerIn: parent ; font.pixelSize:15 }
       MouseArea
       {
         id:a2
         anchors.fill:parent

       }
       Image {
           id: lock1
           source: "lock.png"
           anchors{top:parent.top ; right:parent.right ; topMargin:15 ; rightMargin:30}
        }
       }
    Timer{
        interval: 3000 ; running: true
        onTriggered:{
            tehran2.visible=true;
        }
    }
    Rectangle {
       id:tehran3 ; visible: false
       anchors.right:parent.right ; anchors.top:tehran2.bottom ; anchors.topMargin:30 ; anchors.rightMargin:100 ;
       width:450 ;height:65
       implicitWidth: 100
       implicitHeight: 40
       border.color: "#0000A5" ; color: "#2916F5"
       border.width: a3.pressed ? 8 : 6
       radius: 50
       Text {text:"<b>ISFAHAN</b>" ;color:"white" ; anchors.centerIn: parent ; font.pixelSize:15 }
       MouseArea
       {
         id:a3
         anchors.fill:parent

       }
       Image {
           id: lock2
           source: "lock.png"
           anchors{top:parent.top ; right:parent.right ; topMargin:15 ; rightMargin:30}
        }
       }
    Timer{
        interval: 3500 ; running: true
        onTriggered:{
            tehran3.visible=true;
        }
    }

    Rectangle {
       id:tehran4 ; visible: false
       anchors.right:parent.right ; anchors.top:tehran3.bottom ; anchors.topMargin:30 ; anchors.rightMargin:100 ;
       width:450 ;height:65
       implicitWidth: 100
       implicitHeight: 40
       border.color: "#0000A5" ; color: "#2916F5"
       border.width: a4.pressed ? 8 : 6
       radius: 50
       Text {text:"<b>MASHHAD</b>" ;color:"white" ; anchors.centerIn: parent ; font.pixelSize:15 }
       MouseArea
       {
         id:a4
         anchors.fill:parent

       }
       Image {
           id: lock3
           source: "lock.png"
           anchors{top:parent.top ; right:parent.right ; topMargin:15 ; rightMargin:30}
        }
       }
    Timer{
        interval: 4000 ; running: true
        onTriggered:{
            tehran4.visible=true;
        }
    }
    Rectangle {
       id:tehran5 ; visible: false
       anchors.right:parent.right ; anchors.top:tehran4.bottom ; anchors.topMargin:30 ; anchors.rightMargin:100 ;
       width:450 ;height:65
       implicitWidth: 100
       implicitHeight: 40
       border.color: "#0000A5" ; color: "#2916F5"
       border.width: a5.pressed ? 8 : 6
       radius: 50
       Text {text:"<b>HAMEDAN</b>" ;color:"white" ; anchors.centerIn: parent ; font.pixelSize:15 }
       MouseArea
       {
         id:a5
         anchors.fill:parent

       }
       Image {
           id: lock4
           source: "lock.png"
           anchors{top:parent.top ; right:parent.right ; topMargin:15 ; rightMargin:30}
        }
       }
    Timer{
        interval: 4500 ; running: true
        onTriggered:{
            tehran5.visible=true;
        }
    }
    Rectangle {
       id:tehran6 ; visible: false
       anchors.right:parent.right ; anchors.top:tehran5.bottom ; anchors.topMargin:30 ; anchors.rightMargin:100 ;
       width:450 ;height:65
       implicitWidth: 100
       implicitHeight: 40
       border.color: "#0000A5" ; color: "#2916F5"
       border.width: a6.pressed ? 8 : 6
       radius: 50
       Text {text:"<b>MAZANDARAN</b>" ;color:"white" ; anchors.centerIn: parent ; font.pixelSize:15 }
       MouseArea
       {
         id:a6
         anchors.fill:parent

       }
       Image {
           id: lock5
           source: "lock.png"
           anchors{top:parent.top ; right:parent.right ; topMargin:15 ; rightMargin:30}
        }
       }
    Timer{
        interval: 5000 ; running: true
        onTriggered:{
            tehran6.visible=true;
        }
    }
    Rectangle {
       id:tehran7 ; visible: false
       anchors.right:parent.right ; anchors.top:tehran6.bottom ; anchors.topMargin:30 ; anchors.rightMargin:100 ;
       width:450 ;height:65
       implicitWidth: 100
       implicitHeight: 40
       border.color: "#0000A5" ; color: "#2916F5"
       border.width: a7.pressed ? 8 : 6
       radius: 50
       Text {text:"<b>GILAN</b>" ;color:"white" ; anchors.centerIn: parent ; font.pixelSize:15 }
       MouseArea
       {
         id:a7
         anchors.fill:parent

       }
       Image {
           id: lock6
           source: "lock.png"
           anchors{top:parent.top ; right:parent.right ; topMargin:15 ; rightMargin:30}
        }
       }
    Timer{
        interval: 5500 ; running: true
        onTriggered:{
            tehran7.visible=true;
        }
    }
    Rectangle {
       id:tehran8 ; visible: false
       anchors.right:parent.right ; anchors.top:tehran7.bottom ; anchors.topMargin:30 ; anchors.rightMargin:100 ;
       width:450 ;height:65
       implicitWidth: 100
       implicitHeight: 40
       border.color: "#0000A5" ; color: "#2916F5"
       border.width: a8.pressed ? 8 : 6
       radius: 50
       Text {text:"<b>ARAK</b>" ;color:"white" ; anchors.centerIn: parent ; font.pixelSize:15 }
       MouseArea
       {
         id:a8
         anchors.fill:parent

       }
       Image {
           id: lock7
           source: "lock.png"
           anchors{top:parent.top ; right:parent.right ; topMargin:15 ; rightMargin:30}
        }
       }
    Timer{
        interval: 6000 ; running: true
        onTriggered:{
            tehran8.visible=true;
        }
    }
    Rectangle {
       id:tehran9 ; visible: false
       anchors.right:parent.right ; anchors.top:tehran8.bottom ; anchors.topMargin:30 ; anchors.rightMargin:100 ;
       width:450 ;height:65
       implicitWidth: 100
       implicitHeight: 40
       border.color: "#0000A5" ; color: "#2916F5"
       border.width: a9.pressed ? 8 : 6
       radius: 50
       Text {text:"<b>YAZD</b>" ;color:"white" ; anchors.centerIn: parent ; font.pixelSize:15 }
       MouseArea
       {
         id:a9
         anchors.fill:parent

       }
       Image {
           id: lock8
           source: "lock.png"
           anchors{top:parent.top ; right:parent.right ; topMargin:15 ; rightMargin:30}
        }
       }
    Timer{
        interval: 6500 ; running: true
        onTriggered:{
            tehran9.visible=true;
        }
    }
    Rectangle {
        id:b_exit
       anchors.left:parent.left ; anchors.bottom:parent.bottom ; anchors.leftMargin:30 ; anchors.bottomMargin:20
       width:170 ;height:50
        implicitWidth: 100
       implicitHeight: 40
       border.color: "#0000FF" ; color: exit.pressed ?  "#1589FF" : "#00BFFF"
       border.width: exit.pressed ? 8 : 6
       radius: 50
       Text {text:"<b>EXIT</b>" ;color:"white" ; anchors.centerIn: parent ; font.pixelSize:15 }
       MouseArea
       {
         id:exit
         anchors.fill:parent
         onClicked:{

              Qt.quit();
          }

         }
       }

  }
