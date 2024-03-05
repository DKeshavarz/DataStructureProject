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
    id: root
   // width: 1980
   // height: 1080
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


    Text{
        id:c1 ; visible: false
        text:qsTr("Welcome")
        font.pointSize:50
        anchors{top:parent.top ; left:parent.left ; topMargin:150 ; leftMargin:790}  color:"#FF007F"
     }
    Timer{
        interval: 1000 ; running: true
        onTriggered:{
            c1.visible=true
        }
    }

    Text{
        id:c2 ; visible: false
        text:qsTr("To")
        font.pointSize:50
        anchors{top:parent.top ; left:parent.left ; topMargin:300 ; leftMargin:910}
     }
    LinearGradient  {
        id:c2_2
           anchors.fill: c2 ; visible: false
           source: c2
           gradient: Gradient {
               GradientStop {position: 0.0 ; color: "#0AFFFF"  }
                                               GradientStop {position: 1.0 ; color: "#E238EC"  }
           }
       }
     Timer{
        interval: 2000 ; running: true
        onTriggered:{
            c2.visible=true; c2_2.visible=true
        }
    }
    Rectangle
    {
        id:l1
        width:1280 ; height: 8 ; visible: false
        color: "blue"
        anchors{top:parent.top ; left:parent.left ; topMargin:460 ; leftMargin:300}
    }
    Rectangle
    {
        id:l2
        width:1280 ; height: 8 ; visible: false
        color: "blue"
        anchors{top:parent.top ; left:parent.left ; topMargin:650 ; leftMargin:300}
    }
    Timer{
        interval: 3000 ; running: true
        onTriggered:{
            l1.visible=true; l2.visible=true
        }
    }
    Text{
        id:a1 ; visible: false
        text:qsTr("S")
        font.pointSize: 100
        anchors{top:parent.top ; left:parent.left ; topMargin:450 ; leftMargin:310}
     }
    LinearGradient  {
          id:a1_1
           anchors.fill: a1 ; visible: false
           source: a1
           gradient: Gradient {
               GradientStop {position: 0.0 ; color: "#FF007F"  }
                                               GradientStop {position: 0.5 ; color: "#FF00FF"  }
                                               GradientStop {position: 1.0 ; color: "#57FEFF"  }
           }
       }
    Timer{
        interval: 4000 ; running: true
        onTriggered:{
            a1.visible=true ;  a1_1.visible=true
        }
    }
    Text{
        id:a2
        text:qsTr("A") ; visible: false
        font.pointSize: 100
        anchors{top:a1.top ; left:a1.right ; leftMargin:10}
     }
    LinearGradient  {
        id:a2_2
           anchors.fill: a2 ; visible: false
           source: a2
           gradient: Gradient {
               GradientStop {position: 0.0 ; color: "#FF007F"  }
                                               GradientStop {position: 0.5 ; color: "#FF00FF"  }
                                               GradientStop {position: 1.0 ; color: "#57FEFF"  }
           }
       }
    Timer{
        interval: 4500 ; running: true
        onTriggered:{
            a2.visible=true ;  a2_2.visible=true
        }
    }
    Text{
        id:a3 ; visible: false
        text:qsTr("M")
        font.pointSize: 100
        anchors{top:a2.top ; left:a2.right ; leftMargin:10}
     }
    LinearGradient  {
        id:a3_3
           anchors.fill: a3 ; visible: false
           source: a3
           gradient: Gradient {
               GradientStop {position: 0.0 ; color: "#FF007F"  }
                                               GradientStop {position: 0.5 ; color: "#FF00FF"  }
                                               GradientStop {position: 1.0 ; color: "#57FEFF"  }
           }
       }
    Timer{
        interval: 5000 ; running: true
        onTriggered:{
            a3.visible=true ;  a3_3.visible=true
        }
    }
    Text{
        id:a4
        text:qsTr("H") ; visible: false
        font.pointSize: 100
        anchors{top:a3.top ; left:a3.right ; leftMargin:10}
     }
    LinearGradient  {
        id:a4_4
           anchors.fill: a4 ; visible: false
           source: a4
           gradient: Gradient {
               GradientStop {position: 0.0 ; color: "#FF007F"  }
                                               GradientStop {position: 0.5 ; color: "#FF00FF"  }
                                               GradientStop {position: 1.0 ; color: "#57FEFF"  }
           }
       }
    Timer{
        interval: 5500 ; running: true
        onTriggered:{
            a4.visible=true ;  a4_4.visible=true
        }
    }
    Text{
        id:a5
        text:qsTr("A") ; visible: false
        font.pointSize: 100
        anchors{top:a4.top ; left:a4.right ; leftMargin:10}
     }
    LinearGradient  {
        id:a5_5
           anchors.fill: a5 ; visible: false
           source: a5
           gradient: Gradient {
               GradientStop {position: 0.0 ; color: "#FF007F"  }
                                               GradientStop {position: 0.5 ; color: "#FF00FF"  }
                                               GradientStop {position: 1.0 ; color: "#57FEFF"  }
           }
       }
    Timer{
        interval: 6000 ; running: true
        onTriggered:{
            a5.visible=true ;  a5_5.visible=true
        }
    }
    Text{
        id:a6
        text:qsTr("N") ; visible: false
        font.pointSize: 100
        anchors{top:a5.top ; left:a5.right ; leftMargin:10}
     }
    LinearGradient  {
        id:a
           anchors.fill: a6 ; visible: false
           source: a6
           gradient: Gradient {
               GradientStop {position: 0.0 ; color: "#FF007F"  }
                                               GradientStop {position: 0.5 ; color: "#FF00FF"  }
                                               GradientStop {position: 1.0 ; color: "#57FEFF"  }
           }
       }
    Timer{
        interval: 6500 ; running: true
        onTriggered:{
            a6.visible=true ;  a.visible=true
        }
    }
    Text{
        id:a7
        text:qsTr("H") ; visible: false
        font.pointSize: 100
        anchors{top:a6.top ; left:a6.right ; leftMargin:10}
     }
    LinearGradient  {
        id:a7_7
           anchors.fill: a7 ; visible: false
           source: a7
           gradient: Gradient {
               GradientStop {position: 0.0 ; color: "#FF007F"  }
                                               GradientStop {position: 0.5 ; color: "#FF00FF"  }
                                               GradientStop {position: 1.0 ; color: "#57FEFF"  }
           }
       }
    Timer{
        interval: 7000 ; running: true
        onTriggered:{
            a7.visible=true ;  a7_7.visible=true
        }
    }
    Text{
        id:a8
        text:qsTr("A") ; visible: false
        font.pointSize: 100
        anchors{top:a7.top ; left:a7.right ; leftMargin:10}
     }
    LinearGradient  {
        id:a8_8
           anchors.fill: a8 ; visible: false
           source: a8
           gradient: Gradient {
               GradientStop {position: 0.0 ; color: "#FF007F"  }
                                               GradientStop {position: 0.5 ; color: "#FF00FF"  }
                                               GradientStop {position: 1.0 ; color: "#57FEFF"  }
           }
       }
    Timer{
        interval: 7500 ; running: true
        onTriggered:{
            a8.visible=true ;  a8_8.visible=true
        }
    }
    Text{
        id:a9
        text:qsTr("S") ; visible: false
        font.pointSize: 100
        anchors{top:a8.top ; left:a8.right ; leftMargin:10}
     }
    LinearGradient  {
        id:a9_9
           anchors.fill: a9 ; visible: false
           source: a9
           gradient: Gradient {
               GradientStop {position: 0.0 ; color: "#FF007F"  }
                                               GradientStop {position: 0.5 ; color: "#FF00FF"  }
                                               GradientStop {position: 1.0 ; color: "#57FEFF"  }
           }
       }
    Timer{
        interval: 8000 ; running: true
        onTriggered:{
            a9.visible=true ;  a9_9.visible=true
        }
    }
    Text{
        id:a10
        text:qsTr("H") ; visible: false
        font.pointSize: 100
        anchors{top:a9.top ; left:a9.right ; leftMargin:10}
     }
    LinearGradient  {
        id:a10_10
           anchors.fill: a10 ; visible: false
           source: a10
           gradient: Gradient {
               GradientStop {position: 0.0 ; color: "#FF007F"  }
                                               GradientStop {position: 0.5 ; color: "#FF00FF"  }
                                               GradientStop {position: 1.0 ; color: "#57FEFF"  }
           }
       }
    Timer{
        interval: 8500 ; running: true
        onTriggered:{
            a10.visible=true ;  a10_10.visible=true
        }
    }
    Text{
        id:a11
        text:qsTr("T") ; visible: false
        font.pointSize: 100
        anchors{top:a10.top ; left:a10.right ; leftMargin:10}

     }
    LinearGradient  {
           id:a11_11
           anchors.fill: a11 ; visible: false
           source: a11
           gradient: Gradient {
               GradientStop {position: 0.0 ; color: "#FF007F"  }
                                               GradientStop {position: 0.5 ; color: "#FF00FF"  }
                                               GradientStop {position: 1.0 ; color: "#57FEFF"  }
           }
       }
    Timer{
        interval: 9000 ; running: true
        onTriggered:{
            a11.visible=true ;  a11_11.visible=true
        }
    }

 Text {
     id:a12
     text: qsTr("P  u  b  l  i  c             T  r  a  n  s  p  o  r  t  a  t  i  o  n")
     color:"#E238EC"
     anchors{top:parent.top ; left:parent.left ; topMargin:680 ; leftMargin:310}
     font.pointSize:30 ; visible: false
 }
 Timer{
     interval: 10000 ; running: true
     onTriggered:{
         a12.visible=true
     }
 }
    Timer{
     interval: 13000 ; running: true
     onTriggered:
     {
         var component=Qt.createComponent("S_page.qml");
         var window = component.createObject(root);
          window.show()

     }
 }



 }
