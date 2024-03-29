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
    id: window
   // width: 1980
    //height: 1080
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

        anchors.fill:parent   // #C0C0C0  "#DADBDD"  "#EEEEEE"  "#87CEFA"  "#DFD3E3"
        color: "#C0C0C0"
       // gradient: Gradient {GradientStop {position: 0.0 ; color: "#E0E5E5"  }
                   //        GradientStop {position: 0.5 ; color: "#C0C0C0"  }}
    }



    property string origin: "null" ;  property string  distination: "null" ; property var current ; property var curr_anim
    property string  c_type; property bool d_flag:true ; property bool c_flag:true ; property bool t_flag:true
    property var anim_1 ; property var anim_2 ; property bool color_flag:true
    property string  s_time
    Text{id:n_origin ; anchors{top:parent.top ; right:parent.right ; topMargin:120 ; rightMargin:500}
    font.pointSize:14 ; color:"#FF33AA"}
    Text{id:n_distination ; x:100 ; anchors{top:parent.top ; right:parent.right ; topMargin:120 ; rightMargin:150}
    font.pointSize:14 ; color:"#FF33AA"}
    Text{id:minimum_dis ; text:"" ; anchors{bottom:car.bottom ; left:car.right ; bottomMargin:40 ; leftMargin:20}
      font.pixelSize: 20 }
    Text{id:minimum_cost ;text:"";anchors{bottom:money.bottom ; left:money.right ; bottomMargin:40 ; leftMargin:20}
    font.pixelSize: 20}
    Text{id:minimum_time ; text:"";anchors{bottom:clock.bottom ; left:clock.right ; bottomMargin:40 ; leftMargin:20}
    font.pixelSize: 20}
    Image {
        id: clock
        source: "clock.png"
        anchors{bottom:parent.bottom ; left:parent.left ; bottomMargin:300 ; leftMargin:40}
    }
    Image {
        id: money
        source: "money.png"
        anchors{bottom:parent.bottom ; left:parent.left ; bottomMargin:200 ; leftMargin:40}
    }
    Image {
        id: car
        source: "distance.png"
        anchors{bottom:parent.bottom ; left:parent.left ; bottomMargin:90 ; leftMargin:40}
    }
    Image {
        id: bus
        source: "bus_picture.png"
        anchors{top:parent.top ; right:parent.right ; topMargin:530 ; rightMargin:50}
    }
    Image {
        id: taxi
        source: "taxt_pic.png"
        anchors{top:parent.top ; right:parent.right ; topMargin:480 ; rightMargin:60}
    }
    Image {
        id: sub
        source: "subway_picture.png"
        anchors{top:parent.top ; right:parent.right ; topMargin:400 ; rightMargin:45}
    }
    Rectangle
    {
        width:50 ; height:3 ; color:"#00FFFF";
         anchors{top:sub.top ; right:sub.left ; topMargin:40 }
    }
    Rectangle
    {
        width:50 ; height:3 ; color:"#FFA500";
         anchors{top:taxi.top ; right:taxi.left ; topMargin:30 ; rightMargin:10 }
    }
    Rectangle
    {
         width:50 ; height:3 ; color:"lightblue";
         anchors{top:bus.top ; right:bus.left ; topMargin:40 ; rightMargin:10 }
    }
    Rectangle
    {
         width:50 ; height:3 ; color:"lightblue";
         anchors{top:bus.top ; right:bus.left ; topMargin:45 ; rightMargin:10 }
    }


    function a(s ,  anim , name , type)
    {
        if(!c_flag || !t_flag || !d_flag)
        {
            b_dis.border.color="#d147a3"; b_cost.border.color="#d147a3" ; b_time.border.color="#d147a3"
             b_dis.color="#ff3399"; b_cost.color="#ff3399" ; b_time.color="#ff3399";
            minimum_cost.text="" ; minimum_dis.text="" ; minimum_time.text=""
            back.reset();
            c_flag=true;d_flag=true;t_flag=true;
            origin="null" ;   distination="null"
            n_origin.text=""   ;   n_distination.text=""
        }
           if(origin==="null" && distination!==name)
           {
               origin=name ; n_origin.text=name ; anim.running=true ; anim_1=anim

           }
           else if(distination==="null" &&  origin!==name)
           {
               distination=name ; n_distination.text=name ;  anim.running=true   ; current=s ; curr_anim=anim
               c_type=type ; anim_2=anim
           }
           else
           {
               if(origin===name)
               {
                  origin="null"  ;  n_origin.text="" ; anim.running=false;
                  s.color=type==="l"? "#dcdcdc" : "#00ff55"

               }
               else if(distination===name)
               {
                   distination="null"  ; n_distination.text="" ; anim.running=false;
                   s.color=type==="l"? "#dcdcdc" : "#00ff55"
               }
               else
               {
                   distination=name ; n_distination.text=name ;  anim.running=true ; curr_anim.running=false;
                    current.color=c_type==="l"? "#dcdcdc" : "#00ff55"
                   current=s;c_type=type;curr_anim=anim;anim_2=anim
               }
           }

    }


    InputPanel {
        id: inputPanel
        z: 99
        x: 0
        y: window.height
        width: window.width

        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                y: window.height - inputPanel.height
            }
        }
        transitions: Transition {
            from: ""
            to: "visible"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y"
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }

    Rectangle
    {
        id:tajrish;
        width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        Text{id:x;text:qsTr("<b>Line1</b>") ;color:"red" ;anchors.centerIn:parent}
        anchors{horizontalCenter: parent.horizontalCenter;top:parent.top;topMargin: 13}
        PropertyAnimation {id:l ;target:tajrish ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(tajrish ,l ,"Tajrish" ,"l")
            }
        }
     Component.onCompleted:{back.add_object(tajrish , "Tajrish" , "Node")}
    }
    Rectangle
    {

        id:a1; height: 40; width: 3 ; color:"red";
        anchors{right:tajrish.left;rightMargin:-25;top:parent.top;topMargin: 62}
        Component.onCompleted:{back.add_object(a1 , "Tajrish_Gheytariyeh" , "Line1")}


    }
    Rectangle
    {
        id:gheytariyeh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:a1.bottom; right:a1.left; rightMargin:-17}
        PropertyAnimation {id:l1 ;target:gheytariyeh ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500;loops:Animation.Infinite
            running: false;}
        MouseArea
        {
            anchors.fill:parent
            onClicked:
            {
               a(gheytariyeh ,l1 ,"Gheytariyeh","l")
            }
        }
    Component.onCompleted:{back.add_object(gheytariyeh , "Gheytariyeh" , "Node")}
    }
    Rectangle
    {
        id:a3;height: 40; width: 3 ;color:"red";
        anchors{right:gheytariyeh.left; rightMargin:-15;top:parent.top; topMargin: 132}
        Component.onCompleted:{back.add_object(a3 , "Gheytariyeh_Gholhak" , "Line1")}
    }
    Rectangle
    {
        id:gholhak;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{ top:a3.bottom;right:a3.left;rightMargin:-17}
        PropertyAnimation {id:l2 ;target:gholhak ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea
        {
            anchors.fill:parent
            onClicked:
            {
               a(gholhak ,l2 , "Gholhak","l")
            }
        }
      Component.onCompleted:{back.add_object(gholhak , "Gholhak" , "Node")}

    }
    Rectangle
    {
        id:a5 ;height: 40;width: 3 ;color:"red";
        anchors{right:gholhak.left;rightMargin:-15; top:gholhak.top; topMargin:30}
         Component.onCompleted:{back.add_object(a5 , "Gholhak_Mirdamad" , "Line1")}
    }
    Rectangle
    {
        id:mirdamad;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:a5.bottom; right:a5.left; rightMargin:-17}
        PropertyAnimation {id:l3 ;target:mirdamad ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea
        {
            anchors.fill:parent
            onClicked:
            {
               a(mirdamad,l3 , "Mirdamad","l")
            }
        }
    Component.onCompleted:{back.add_object(mirdamad , "Mirdamad" , "Node")}
    }
    Rectangle
    {
        id:a7; height: 40; width: 3 ;color:"red";
        anchors{right:mirdamad.left;rightMargin:-15;top:mirdamad.top;  topMargin:30}
         Component.onCompleted:{back.add_object(a7 , "Mirdamad_Shahid Haghani" , "Line1")}
    }
    Rectangle
    {
        id:ha;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{ top:a7.bottom;right:a7.left; rightMargin:-17}
       PropertyAnimation {id:l4 ;target:ha; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
           running: false;}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(ha , l4 ,"Shahid Haghani","l")
           }
       }
    Component.onCompleted:{back.add_object(ha , "Shahid Haghani" , "Node")}
    }
    Rectangle
    {
        id:a9;
        height: 30;  width: 3 ; color:"red";anchors{right:ha.left; rightMargin:-15; top:ha.top;topMargin:30}
        Component.onCompleted:{back.add_object(a9 , "Shahid Haghani_Shahid Beheshti" , "Line1")}
    }
    Rectangle
    {
        id:beheshti;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{ top:a9.bottom; right:a9.left;  rightMargin:-17}
        PropertyAnimation {id:l5 ;target:beheshti; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(beheshti , l5, "Shahid Beheshti","l")
            }
        }
      Component.onCompleted:{back.add_object(beheshti , "Shahid Beheshti" , "Node")}
    }
    Rectangle
    {
        id:a11;height: 25;width: 3 ;color:"red";
        anchors{right:beheshti.left; rightMargin:-15; top:beheshti.top;topMargin:30}
        Component.onCompleted:{back.add_object(a11 , "Shahid Beheshti_Shahid Mofatteh" , "Line1")}
    }
    Rectangle
    {
        id:mofatteh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{ top:a11.bottom; right:a11.left; rightMargin:-17}
       PropertyAnimation {id:l6 ;target:mofatteh; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
           running: false;}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(mofatteh ,l6, "Shahid Mofatteh","l")
           }
       }
    Component.onCompleted:{back.add_object(mofatteh , "Shahid Mofatteh" , "Node")}
    }
    Rectangle
    {
        id:a13; height: 30 ; width: 3 ;  color:"red";
        anchors{right:mofatteh.left; rightMargin:-15;top:mofatteh.top; topMargin:30}
        Component.onCompleted:{back.add_object(a13 , "Shahid Mofatteh_Haftom-e Tir" , "Line1")}
    }
    Rectangle
    {
        id:hafte_tir;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{ top:a13.bottom; right:a13.left; rightMargin:-17}
       PropertyAnimation {id:l7 ;target:hafte_tir; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
           running: false;}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(hafte_tir,l7 , "Haftom-e Tir","l")
           }
       }
     Component.onCompleted:{back.add_object(hafte_tir , "Haftom-e Tir" , "Node")}
    }
    Rectangle
    {
        id:a15;height:30; width: 3 ; color:"red";
        anchors {right:hafte_tir.left;rightMargin:-15;top:hafte_tir.top;topMargin:30}
        Component.onCompleted:{back.add_object(a15 , "Haftom-e Tir_Taleghani" , "Line1")}
    }
    Rectangle
    {
        id:taleghani;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{ top:a15.bottom; right:a15.left; rightMargin:-17}
       PropertyAnimation {id:l8 ;target:taleghani; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
           running: false;}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(taleghani,l8 , "Taleghani","l")
           }
       }
    Component.onCompleted:{back.add_object(taleghani , "Taleghani" , "Node")}
    }
    Rectangle
    {
        id:a17; height: 25 ; width: 3 ;color:"red";
        anchors{right:taleghani.left; rightMargin:-15; top:taleghani.top;topMargin:30}
        Component.onCompleted:{back.add_object(a17 , "Taleghani_Darvazeh Dowlat" , "Line1")}
    }
    Rectangle
    {
        id:dowlat ;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{top:a17.bottom;right:a17.left; rightMargin:-17}
       PropertyAnimation {id:l9 ;target:dowlat; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
           running: false;}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(dowlat ,l9, "Darvazeh Dowlat","l")
           }
       }
     Component.onCompleted:{back.add_object(dowlat , "Darvazeh Dowlat" , "Node")}
    }
    Rectangle
    {
        id:a19;height: 50; width: 3 ;color:"red";anchors
        { right:dowlat.left;rightMargin:-15;top:dowlat.top; topMargin:30}
         Component.onCompleted:{back.add_object(a19 , "Darvazeh Dowlat_Panzdah-e Khordad" , "Line1")}
    }
    Rectangle
    {
        id:khordad;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{ top:a19.bottom;right:a19.left; rightMargin:-17}
       PropertyAnimation {id:l10 ;target:khordad; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
           running: false;}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(khordad , l10 ,"Panzdah-e Khordad","l")
           }
       }
    Component.onCompleted:{back.add_object(khordad , "Panzdah-e Khordad" , "Node")}
    }
    Rectangle
    {
        id:a21;height: 30;width:3 ; color:"red";
        anchors{right:khordad.left; rightMargin:-15;  top:khordad.top;topMargin:30}
         Component.onCompleted:{back.add_object(a21 , "Panzdah-e Khordad_Shoush" , "Line1")}
    }
    Rectangle
    {
        id:shoush;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{ top:a21.bottom;  right:a21.left; rightMargin:-17}
        PropertyAnimation {id:l11 ;target:shoush; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(shoush , l11 , "Shoush","l")
            }
        }
    Component.onCompleted:{back.add_object(shoush , "Shoush" , "Node")}
    }
    Rectangle
    {
        id:a23; height: 50;  width: 3 ;  color:"red";
        anchors{ right:shoush.left;rightMargin:-15; top:shoush.top; topMargin:30}
       Component.onCompleted:{back.add_object(a23 , "Shoush_Jonoub Terminal" , "Line1")}
    }
    Rectangle
    {
        id:jonoub;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{  top:a23.bottom;  right:a23.left; rightMargin:-17}
        PropertyAnimation {id:l12 ;target:jonoub; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(jonoub, l12 ,"Jonoub Terminal","l")
            }
        }
     Component.onCompleted:{back.add_object(jonoub, "Jonoub Terminal" , "Node")}
    }
    Rectangle
    {   id:a25; height: 30;width: 3 ; color:"red";
        anchors{ right:jonoub.left;rightMargin:-15;top:jonoub.top; topMargin:30}
        Component.onCompleted:{back.add_object(a25 , "Jonoub Terminal_Shahr-e Rey" , "Line1")}
    }
    Rectangle
    {
        id:rey;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{ top:a25.bottom; right:a25.left;rightMargin:-17}
        PropertyAnimation {id:l13 ;target:rey; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(rey, l13 , "Shahr-e Rey","l")
            }
        }
    Component.onCompleted:{back.add_object(rey, "Shahr-e Rey" , "Node")}
    }
    Rectangle
    {
        id:a27; height: 48 ;width: 3 ; color:"red";
        anchors{right:rey.left; rightMargin:-15; top:rey.top; topMargin:30}
        Component.onCompleted:{back.add_object(a27 , "Shahr-e Rey_Kahrizak" , "Line1")}
    }
    Rectangle
    {
        id:kahrizak;
        width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        Text{text:qsTr("<b>Line1</b>") ; color:"red";anchors.centerIn:parent}
        anchors{ top:a27.bottom;right:a27.left; rightMargin:-27}
        PropertyAnimation {id:l14 ;target:kahrizak; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(kahrizak,l14, "Kahrizak","l")
            }
        }
    Component.onCompleted:{back.add_object(kahrizak, "Kahrizak", "Node")}
    }
    Rectangle
    {
      id:b; height: 3 ;width: 50; color:"#333CFF"
      anchors{top:beheshti.top;left:beheshti.right;topMargin:14;}
      Component.onCompleted:{back.add_object(b , "Shahid Beheshti_Sohrevardi" , "Line3")}
    }
    Rectangle
    {
        id:sohrevardi;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:beheshti.top;left:b.right}
        PropertyAnimation {id:l15 ;target:sohrevardi; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(sohrevardi,l15, "Sohrevardi","l")
            }
        }

        Component.onCompleted:{back.add_object(sohrevardi, "Sohrevardi", "Node")}
    }
    Rectangle
    {
      id:b2 ; height: 3 ;width:20 ; color:"#333CFF"
      anchors{top:b.top;left:sohrevardi.right;}
      Component.onCompleted:{back.add_object(b2 , "Sohrevardi_Shahid Ghodousi" , "Line3")}
    }
    Rectangle
    {
      id:b3; height: 50 ;width:3 ; color:"#333CFF"
      anchors{bottom:b2.top;left:b2.right;bottomMargin:-2;leftMargin:-3}
      Component.onCompleted:{back.add_object(b3 , "Sohrevardi_Shahid Ghodousi" , "Line3")}
    }
    Rectangle
    {
      id:b4 ; height: 3 ;width:40 ; color:"#333CFF"
      anchors{top:b3.top;left:b3.right;}
      Component.onCompleted:{back.add_object(b4 , "Sohrevardi_Shahid Ghodousi" , "Line3")}
    }
    Rectangle
    {
        id:gh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{top:b4.top;left:b4.right;topMargin:-13}
       PropertyAnimation {id:l16 ;target:gh; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
           running: false;}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(gh,l16, "Shahid Ghodousi","l")
           }
       }
     Component.onCompleted:{back.add_object(gh, "Shahid Ghodousi", "Node")}
    }
    Rectangle
    {
      id:b6 ; height: 3 ;width:80 ; color:"#333CFF"
      anchors{top:b4.top;left:gh.right;}
      Component.onCompleted:{back.add_object(b6 , "Shahid Ghodousi_Shahid Zeynoddin" , "Line3")}

    }
    Rectangle
    {
        id:z;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:gh.top;left:b6.right;}
        PropertyAnimation {id:l17 ;target:z ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a( z  , l17   ,"Shahid Zeynoddin","l")
            }
        }
    Component.onCompleted:{back.add_object(z  , "Shahid Zeynoddin", "Node")}
    }
    Rectangle
    {
      id:b8 ; height: 3 ;width:80 ; color:"#333CFF"
      anchors{top:b6.top;left:z.right;}
      Component.onCompleted:{back.add_object(b8 , "Shahid Zeynoddin_Aghdasiyeh" , "Line3")}
    }
    Rectangle
    {
        id:aghdasiyeh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:z.top;left:b8.right;}
        PropertyAnimation {id:l18 ;target:aghdasiyeh ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a( aghdasiyeh , l18 , "Aghdasiyeh","l")
            }
        }
    Component.onCompleted:{back.add_object(aghdasiyeh , "Aghdasiyeh", "Node")}
    }
    Rectangle
    {
      id:b10 ; height: 3 ;width:170 ; color:"#333CFF"
      anchors{top:b8.top;left:aghdasiyeh.right}
      Component.onCompleted:{back.add_object(b10 , "Aghdasiyeh_Gha'em" , "Line3")}
    }
    Rectangle
    {
        id:ghaem;
        width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        Text{text:qsTr("<b>Line3</b>") ; color:"blue";anchors.centerIn:parent}
        PropertyAnimation {id:l19 ;target:ghaem ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        anchors{top:aghdasiyeh.top;left:b10.right;topMargin:-10}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a( ghaem,l19, "Gha'em","l")
            }
        }
     Component.onCompleted:{back.add_object(ghaem, "Gha'em", "Node")}
    }
    Rectangle
    {
      id:b12 ; height: 3 ;width:150 ; color:"#333CFF"
      anchors{top:b.top;right:beheshti.left;}
       Component.onCompleted:{back.add_object(b12 , "Shahid Beheshti_Merza-ye Shirazi" , "Line3")}
    }
    Rectangle
    {
        id:shirazi;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
         anchors{top:beheshti.top;right:b12.left}
         PropertyAnimation {id:l20 ;target:shirazi ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
             running: false;}
         MouseArea{
             anchors.fill:parent
             onClicked:{
                a( shirazi,l20, "Merza-ye Shirazi","l")
             }
         }
     Component.onCompleted:{back.add_object(shirazi, "Merza-ye Shirazi", "Node")}
    }
    Rectangle
    {
      id:b14 ; height: 3 ;width:30 ; color:"#333CFF"
      anchors{top:b12.top;right:shirazi.left;}
      Component.onCompleted:{back.add_object(b14 , "Merza-ye Shirazi_Meydan-e Jahad" , "Line3")}
    }
    Rectangle
    {
      id:b15 ; height:30 ;width: 3 ; color:"#3355FF"
      anchors{top:b14.bottom;right:b14.left;topMargin:-2;rightMargin:-3}
      Component.onCompleted:{back.add_object(b15 , "Merza-ye Shirazi_Meydan-e Jahad" , "Line3")}
    }
    Rectangle
    {
        id:jahad;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:b15.bottom;right:b15.left;rightMargin:-17}
        PropertyAnimation {id:l21 ;target:jahad ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a( jahad , l21, "Meydan-e Jahad","l")
            }
        }
     Component.onCompleted:{back.add_object(jahad , "Meydan-e Jahad", "Node")}
    }
    Rectangle
    {
      id:b17 ; height:40 ;width:3 ; color:"#333CFF"
      anchors{top:jahad.bottom;right:jahad.left;rightMargin:-16;}
     Component.onCompleted:{back.add_object(b17 , "Meydan-e Jahad_Meydan-e Hazrat-e ValiAsr" , "Line3")}
    }
    Rectangle
    {
        id:v;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:b17.bottom;right:b17.left;rightMargin:-17}
        PropertyAnimation {id:l22 ;target:v ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a( v , l22, "Meydan-e Hazrat-e ValiAsr","l")
            }
        }
     Component.onCompleted:{back.add_object(v , "Meydan-e Hazrat-e ValiAsr", "Node")}
    }
    Rectangle
    {
      id:b19 ; height:30 ;width: 3  ; color:"#333CFF"
      anchors{top:v.top;right:v.left;rightMargin:-16;topMargin:30}
      Component.onCompleted:{back.add_object(b19 , "Meydan-e Hazrat-e ValiAsr_Teatr-e Shahr" , "Line3")}
    }
    Rectangle
    {
        id:teatr;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
      anchors{top:b19.bottom;right:b19.left;rightMargin:-17}
      PropertyAnimation {id:l23 ;target:teatr ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
          running: false;}
      MouseArea{
          anchors.fill:parent
          onClicked:{
             a( teatr ,l23, "Teatr-e Shahr","l")
          }
      }
    Component.onCompleted:{back.add_object(teatr , "Teatr-e Shahr", "Node")}
    }
    Rectangle
    {
      id:b21 ; height:65 ;width:3 ; color:"#333CFF"
      anchors{top:teatr.bottom;right:teatr.left;rightMargin:-16;}
       Component.onCompleted:{back.add_object(b21 , "Teatr-e Shahr_Moniriyeh" , "Line3")}
    }
    Rectangle
    {
        id:moniriyeh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
      anchors{top:b21.bottom;right:b21.left;rightMargin:-17}
      PropertyAnimation {id:l24 ;target:moniriyeh ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
          running: false;}
      MouseArea{
          anchors.fill:parent
          onClicked:{
             a( moniriyeh , l24 , "Moniriyeh","l")
          }
      }
      Component.onCompleted:{back.add_object(moniriyeh , "Moniriyeh", "Node")}

    }
    Rectangle
    {
      id:b23 ; height:30 ;width:3 ; color:"#333CFF"
      anchors{top:moniriyeh.bottom;right:moniriyeh.left;rightMargin:-16;}
      Component.onCompleted:{back.add_object(b23 , "Moniriyeh_Mahdiyeh" , "Line3")}
    }
    Rectangle
    {
        id:mahdiyeh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
      anchors{top:b23.bottom;right:b23.left;rightMargin:-17}
      PropertyAnimation {id:l25 ;target:mahdiyeh ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
          running: false;}
      MouseArea{
          anchors.fill:parent
          onClicked:{
             a( mahdiyeh , l25 , "Mahdiyeh","l")
          }
      }
     Component.onCompleted:{back.add_object(mahdiyeh , "Mahdiyeh", "Node")}
    }
    Rectangle
    {
      id:b25 ; height:30 ;width:3 ; color:"#333CFF"
      anchors{top:mahdiyeh.bottom;right:mahdiyeh.left;rightMargin:-16;}
      Component.onCompleted:{back.add_object(b25 , "Mahdiyeh_Rahahan" , "Line3")}
    }
    Rectangle
    {
        id:rahahan;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
      anchors{top:b25.bottom;right:b25.left;rightMargin:-17}
      PropertyAnimation {id:l26 ;target:rahahan ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
          running: false;}
      MouseArea{
          anchors.fill:parent
          onClicked:{
             a( rahahan ,l26, "Rahahan","l")
          }
      }
    Component.onCompleted:{back.add_object(rahahan , "Rahahan", "Node")}
    }
    Rectangle
    {
      id:b27 ; height:30 ;width:3 ; color:"#333CFF"
      anchors{top:rahahan.bottom;right:rahahan.left;rightMargin:-16;}
      Component.onCompleted:{back.add_object(b27 , "Rahahan_Javadiyeh" , "Line3")}
    }
    Rectangle
    {
        id:javadiyeh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
      anchors{top:b27.bottom;right:b27.left;rightMargin:-17}
      PropertyAnimation {id:l27 ;target:javadiyeh ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
          running: false;}
      MouseArea{
          anchors.fill:parent
          onClicked:{
             a( javadiyeh,l27 , "Javadiyeh","l")
          }
      }
    Component.onCompleted:{back.add_object(javadiyeh , "Javadiyeh", "Node")}
    }
    Rectangle
    {
      id:b29 ; height:35 ;width:3 ; color:"#333CFF"
      anchors{top:javadiyeh.bottom;right:javadiyeh.left;rightMargin:-16;}
      Component.onCompleted:{back.add_object(b29 , "Javadiyeh_Zamzam" , "Line3")}
    }
    Rectangle
    {
        id:zamzam;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:b29.bottom;right:b29.left;rightMargin:-17}
        PropertyAnimation {id:l28 ;target:zamzam ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a( zamzam,l28 , "Zamzam","l")
            }
        }
     Component.onCompleted:{back.add_object(zamzam , "Zamzam", "Node")}
    }
    Rectangle
    {
      id:b31 ; height:43  ;width: 3  ; color:"#333CFF"
      anchors{top:zamzam.bottom;right:zamzam.left;rightMargin:-16;}
      Component.onCompleted:{back.add_object(b31 , "Zamzam_Azadegan" , "Line3")}
    }
    Rectangle
    {
        id:azadegan;
        width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        Text{text:qsTr("<b>Line3</b>") ; color:"blue";anchors.centerIn:parent}
          anchors{top:b31.bottom;right:b31.left;rightMargin:-27}
          PropertyAnimation {id:l29 ;target:azadegan; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
              running: false;}
          MouseArea{
              anchors.fill:parent
              onClicked:{
                 a( azadegan , l29 , "Azadegan","l")
              }
          }
     Component.onCompleted:{back.add_object( azadegan , "Azadegan", "Node")}
    }
    Rectangle
    {
      id:c; height:3  ;width:200 ; color:"#ff1493"
      anchors{top:hafte_tir.bottom;left:hafte_tir.right;topMargin:-17}
      Component.onCompleted:{back.add_object(c , "Haftom-e Tir_Emam Hossein" , "Line6")}
    }
    Rectangle
    {
      id:c1; height:20 ;width: 3  ; color:"#ff1493"
      anchors{top:c.bottom;left:c.right;topMargin:-2;leftMargin:-3}
      Component.onCompleted:{back.add_object(c1 , "Haftom-e Tir_Emam Hossein" , "Line6")}
    }
    Rectangle
    {
        id:e;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:c1.bottom;right:c1.left;rightMargin:-17}
        PropertyAnimation {id:l30 ;target:e ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(e, l30 ,"Emam Hossein","l")
            }
        }
      Component.onCompleted:{back.add_object( e, "Emam Hossein", "Node")}
    }
    Rectangle
    {
      id:c3; height:100 ;width:3 ; color:"#ff1493"
      anchors{top:e.bottom;right:e.left;rightMargin:-17}
      Component.onCompleted:{back.add_object(c3 , "Emam Hossein_Meydan-e Shohada" , "Line6")}
    }
    Rectangle
    {
        id:sh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:c3.bottom;right:c3.left;rightMargin:-17}
        PropertyAnimation {id:l31 ;target:sh ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(sh , l31, "Meydan-e Shohada","l")
            }
        }
     Component.onCompleted:{back.add_object(sh , "Meydan-e Shohada", "Node")}
    }
    Rectangle
    {
      id:c5; height:100 ;width:3 ; color:"#ff1493"
      anchors{top:sh.bottom;right:sh.left;rightMargin:-17}
       Component.onCompleted:{back.add_object(c5 , "Meydan-e Shohada_Shahid Rezaei" , "Line6")}
    }
    Rectangle
    {
        id:r;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:c5.bottom;right:c5.left;rightMargin:-17}
        PropertyAnimation {id:l32 ;target:r ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(r ,l32, "Shahid Rezaei","l")
            }
        }
    Component.onCompleted:{back.add_object(r , "Shahid Rezaei", "Node")}
    }
    Rectangle
    {
      id:c7; height:176 ;width: 3 ; color:"#ff1493"
      anchors{top:r.bottom;right:r.left;rightMargin:-17}
       Component.onCompleted:{back.add_object(c7 , "Shahid Rezaei_Haram-e Hazrat-e Abdolazim" , "Line6")}
    }
    Rectangle
    {
      id:c8; height: 3  ;width:365 ; color:"#ff1493"
      anchors{top:c7.bottom;left:c7.right;leftMargin:-3}
       Component.onCompleted:{back.add_object(c8 , "Shahid Rezaei_Haram-e Hazrat-e Abdolazim" , "Line6")}
    }
    Rectangle
    {
        id:h;
        width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        Text{text:qsTr("<b>Line6</b>") ; color:"#ff1493";anchors.centerIn:parent}
        anchors{top:c8.top;left:c8.right;topMargin:-25}
        PropertyAnimation {id:l33 ;target:h ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(h ,l33, "Haram-e Hazrat-e Abdolazim","l")
            }
        }
    Component.onCompleted:{back.add_object(h , "Haram-e Hazrat-e Abdolazim", "Node")}
    }
    Rectangle
    {
      id:c10; height:3 ; width:192 ; color:"#ff1493"
      anchors{top:c.top;right:hafte_tir.left;}
       Component.onCompleted:{back.add_object(c10 , "Haftom-e Tir_Meydan-e Hazrat-e ValiAsr" , "Line6")}
    }
    Rectangle
    {
      id:c11; height: 3 ; width:160 ; color:"#ff1493"
      anchors{top:c10.top;right:v.left;}
       Component.onCompleted:{back.add_object(c11 , "Meydan-e Hazrat-e ValiAsr_Boostan-e laleh" , "Line6")}

    }
    Rectangle
    {
        id:boostan;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:v.top;right:c11.left;}
        PropertyAnimation {id:l34 ;target:boostan ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(boostan , l34 ,"Boostan-e laleh","l")
            }
        }
    Component.onCompleted:{back.add_object(boostan , "Boostan-e laleh", "Node")}
    }
    Rectangle
    {
      id:c13; height:170 ; width: 3 ; color:"#ff1493"
      anchors{bottom:boostan.top;right:boostan.left;rightMargin:-15}
      Component.onCompleted:{back.add_object(c13 , "Boostan-e laleh_Yadegar-e Emam" , "Line6")}

    }
    Rectangle
    {
      id:c14; height:3 ; width:100 ; color:"#ff1493"
      anchors{top:c13.top;right:boostan.left;rightMargin:-15}
      Component.onCompleted:{back.add_object(c14 , "Boostan-e laleh_Yadegar-e Emam" , "Line6")}

    }
    Rectangle
    {
        id:yadegar;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
         anchors{top:c14.top;right:c14.left;topMargin:-15;}
         PropertyAnimation {id:l35 ;target:yadegar ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
             running: false;}
         MouseArea{
             anchors.fill:parent
             onClicked:{
                a(yadegar ,l35 , "Yadegar-e Emam","l")
             }
         }
    Component.onCompleted:{back.add_object(yadegar , "Yadegar-e Emam", "Node")}
    }
    Rectangle
    {
      id:c16; height:3 ; width:100 ; color:"#ff1493"
      anchors{top:yadegar.top;right:yadegar.left;topMargin:15;}
      Component.onCompleted:{back.add_object(c16 , "Yadegar-e Emam_Kashani" , "Line6")}
    }
    Rectangle
    {
        id:kashani;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{top:yadegar.top;right:c16.left;}
       PropertyAnimation {id:l36 ;target:kashani ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
           running: false;}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(kashani ,l36, "Kashani","l")
           }
       }
    Component.onCompleted:{back.add_object(kashani , "Kashani", "Node")}
    }
    Rectangle
    {
      id:c18; height:3 ; width:130 ; color:"#ff1493"
      anchors{top:kashani.top;right:kashani.left;topMargin:15;}
      Component.onCompleted:{back.add_object(c18 , "Kashani_Kouhsar" , "Line6")}
    }
    Rectangle
    {
        id:kouhsar;
        width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        Text{text:qsTr("<b>Line6</b>") ; color: "#ff1493";anchors.centerIn:parent}
        anchors{top:kashani.top;right:c18.left;topMargin:-10}
        PropertyAnimation {id:l37 ;target:kouhsar ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(kouhsar , l37 , "Kouhsar","l")
            }
        }
    Component.onCompleted:{back.add_object(kouhsar , "Kouhsar", "Node")}
    }
    Rectangle
    {
      id:d ; height:230 ; width:3 ; color:"yellow"
      anchors{bottom:kashani.top;right:c16.left;rightMargin:13}
       Component.onCompleted:{back.add_object(d , "Chaharbagh_Kashani" , "Line4")}
    }
    Rectangle
    {
        id:chaharbagh;
        width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        Text{text:qsTr("<b>Line4</b>") ; color: "yellow" ;anchors.centerIn:parent}
        anchors{bottom:d.top;right:d.left;rightMargin:-27}
        PropertyAnimation {id:l38 ;target:chaharbagh ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(chaharbagh ,l38 , "Chaharbagh","l")
            }
        }
      Component.onCompleted:{back.add_object(chaharbagh , "Chaharbagh", "Node")}
    }
    Rectangle
    {
      id:d2 ; height:50 ; width:3 ; color:"yellow"
      anchors{top:kashani.bottom;right:c16.left;rightMargin:15}
      Component.onCompleted:{back.add_object(d2 , "Kashani_Allameh Jafari" , "Line4")}
    }
    Rectangle
    {
        id:jafari;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
         anchors{top:d2.bottom;right:d2.left;rightMargin:-17}
         PropertyAnimation {id:l39 ;target:jafari ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
             running: false;}
         MouseArea{
             anchors.fill:parent
             onClicked:{
                a(jafari ,l39, "Allameh Jafari","l")
             }
         }
    Component.onCompleted:{back.add_object(jafari , "Allameh Jafari", "Node")}
    }
    Rectangle
    {
      id:d4 ; height:50 ; width: 3 ; color:"yellow"
      anchors{top:jafari.bottom;right:jafari.left;rightMargin:-15}
       Component.onCompleted:{back.add_object(d4 , "Allameh Jafari_Eram-e Sabz" , "Line4")}
    }
    Rectangle
    {
        id:sabz;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:d4.bottom;right:d4.left;rightMargin:-17}
        PropertyAnimation {id:l40 ;target:sabz ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(sabz ,l40 , "Eram-e Sabz","l")
            }
        }
    Component.onCompleted:{back.add_object(sabz , "Eram-e Sabz", "Node")}
    }
    Rectangle
    {
      id:d6 ; height:55 ; width:3 ; color:"yellow"
      anchors{top:sabz.bottom;right:sabz.left;rightMargin:-15}
      Component.onCompleted:{back.add_object(d6 , "Eram-e Sabz_Meydan-e Azadi" , "Line4")}
    }
    Rectangle
    {
        id:azadi;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:d6.bottom;right:d6.left;rightMargin:-17}
        PropertyAnimation {id:l41 ;target:azadi ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(azadi , l41 , "Meydan-e Azadi","l")
            }
        }
    Component.onCompleted:{back.add_object(azadi , "Meydan-e Azadi", "Node")}
    }
    Rectangle
    {
      id:d8 ; height:3 ; width:30 ; color:"yellow"
      anchors{top:azadi.top;left:azadi.right;topMargin: 15;}
      Component.onCompleted:{back.add_object(d8 , "Meydan-e Azadi_Ostad Mo'in" , "Line4")}
    }
    Rectangle
    {
        id:moein;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:azadi.top;left:d8.right}
        PropertyAnimation {id:l42 ;target:moein ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(moein ,l42, "Ostad Mo'in","l")
            }
        }
    Component.onCompleted:{back.add_object(moein , "Ostad Mo'in", "Node")}
    }
    Rectangle
    {
      id:d10 ; height:3 ; width:40 ; color:"yellow"
      anchors{top:d8.top;left:moein.right;}
       Component.onCompleted:{back.add_object(d10 , "Ostad Mo'in_Shademan" , "Line4")}
    }
    Rectangle
    {
        id:shadman;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:moein.top;left:d10.right}
        PropertyAnimation {id:l43 ;target:shadman ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(shadman , l43 , "Shademan","l")
            }
        }
     Component.onCompleted:{back.add_object(shadman , "Shademan", "Node")}
    }
    Rectangle
    {
      id:d12 ; height:3 ; width:40 ; color:"yellow"
      anchors{top:d10.top;left:shadman.right;}
       Component.onCompleted:{back.add_object(d12 , "Shademan_Towhid" , "Line4")}
    }
    Rectangle
    {
        id:tohid;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{top:shadman.top;left:d12.right}
       PropertyAnimation {id:l44 ;target:tohid; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
           running: false;}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(tohid, l44 , "Towhid","l")
           }
       }
     Component.onCompleted:{back.add_object(tohid , "Towhid", "Node")}
    }
    Rectangle
    {
      id:d14 ; height:3 ; width:82 ; color:"yellow"
      anchors{top:d12.top;left:tohid.right;}
      Component.onCompleted:{back.add_object(d14 , "Towhid_Meydan-e Enghelab-e Eslami" , "Line4")}
    }
    Rectangle
    {
        id:meydan;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:tohid.top;left:d14.right}
        anchors{top:shadman.top;left:d12.right}
        PropertyAnimation {id:l46 ;target:meydan ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(meydan , l46 ,"Meydan-e Enghelab-e Eslami","l")
            }
        }
    Component.onCompleted:{back.add_object(meydan , "Meydan-e Enghelab-e Eslami", "Node")}
    }
    Rectangle
    {
      id:d16 ; height:3 ; width:96 ; color:"yellow"
      anchors{top:d14.top;left:meydan.right;}
        Component.onCompleted:{back.add_object(d16 , "Meydan-e Enghelab-e Eslami_Teatr-e Shahr" , "Line4")}
    }
    Rectangle{id:d17 ; height:3 ; width:50 ; color:"yellow";anchors{top:d16.top;left:teatr.right;}
        Component.onCompleted:{back.add_object(d17 , "Teatr-e Shahr_Ferdowsi" , "Line4")}
    }
    Rectangle
    {
        id:ferdowsi;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:teatr.top;left:d17.right}
        PropertyAnimation {id:l47 ;target:ferdowsi ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(ferdowsi , l47 , "Ferdowsi","l")
            }
        }
     Component.onCompleted:{back.add_object(ferdowsi , "Ferdowsi", "Node")}
    }
    Rectangle{id:d19 ; height:3 ; width:30 ; color:"yellow";anchors{top:d16.top;left:ferdowsi.right;}
     Component.onCompleted:{back.add_object(d19 , "Ferdowsi_Darvazeh Dowlat" , "Line4")}}
    Rectangle{id:d20 ; height:55 ; width:3 ; color:"yellow";anchors{top:d19.bottom;left:d19.right;topMargin:-3;}
     Component.onCompleted:{back.add_object(d20 , "Ferdowsi_Darvazeh Dowlat" , "Line4")}}
    Rectangle{id:d21 ; height:3 ; width:79 ; color:"yellow";anchors{top:d20.bottom;left:d20.right;leftMargin: -3;}
     Component.onCompleted:{back.add_object(d21 , "Ferdowsi_Darvazeh Dowlat" , "Line4")}}


    Rectangle{id:d22 ; height:3 ; width:90 ; color:"yellow";anchors{top:d21.top;left:dowlat.right;}
     Component.onCompleted:{back.add_object(d22 , "Darvazeh Dowlat_Darvazeh Shemiran" , "Line4")}}
    Rectangle
    {
        id:shemiran;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{top:dowlat.top;left:d22.right}
       PropertyAnimation {id:l48 ;target:shemiran ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
           running: false;}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(shemiran ,l48, "Darvazeh Shemiran","l")
           }
       }
     Component.onCompleted:{back.add_object(shemiran , "Darvazeh Shemiran", "Node")}
    }
    Rectangle{id:d24 ; height:3 ; width:30 ; color:"yellow";anchors{top:d22.top;left:shemiran.right;}
     Component.onCompleted:{back.add_object(d24 , "Darvazeh Shemiran_Meydan-e Shohada" , "Line4")}}
    Rectangle{id:d25 ; height:48 ; width:3 ; color:"yellow";anchors{top:d24.bottom;left:d24.right;leftMargin: -3}
     Component.onCompleted:{back.add_object(d25 , "Darvazeh Shemiran_Meydan-e Shohada" , "Line4")}}
    Rectangle{id:d26 ; height:3 ; width:40 ; color:"yellow";anchors{top:d25.bottom;left:d25.right;topMargin:-3;leftMargin: -3}
     Component.onCompleted:{back.add_object(d26 , "Darvazeh Shemiran_Meydan-e Shohada" , "Line4")}}

    Rectangle{id:d27 ; height:3 ; width:60 ; color:"yellow";anchors{top:d26.top;left:sh.right;}
     Component.onCompleted:{back.add_object(d27 , "Meydan-e Shohada_Ebn-e Sina" , "Line4")}}
    Rectangle
    {
        id:eb;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:sh.top;left:d27.right}
        PropertyAnimation {id:l49 ;target:eb ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(eb ,l49, "Ebn-e Sina","l")
            }
        }
     Component.onCompleted:{back.add_object(eb , "Ebn-e Sina", "Node")}
    }
     Rectangle{id:d29 ; height:3 ; width:30 ; color:"yellow";anchors{top:d27.top;left:eb .right}
     Component.onCompleted:{back.add_object(d29 , "Ebn-e Sina_Pirouzi" , "Line4")}}
     Rectangle
     {
         id:pirouzi;
         width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:eb .top;left:d29.right}
        PropertyAnimation {id:l50 ;target:pirouzi ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
            running: false;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(pirouzi, l50 , "Pirouzi","l")
            }
        }
     Component.onCompleted:{back.add_object(pirouzi , "Pirouzi", "Node")}
     }
     Rectangle{id:d31 ; height:3 ; width:30 ; color:"yellow";anchors{top:d29.top;left:pirouzi.right;}
     Component.onCompleted:{back.add_object(d31 , "Pirouzi_Nabard" , "Line4")}}
     Rectangle
     {
         id:nabard
         width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{top:pirouzi.top;left:d31.right}
       PropertyAnimation {id:l51 ;target:nabard ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
           running: false;}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(nabard , l51 ,"Nabard","l")
           }
       }
     Component.onCompleted:{back.add_object(nabard , "Nabard", "Node")}
     }
      Rectangle{id:d33 ; height:3 ; width:30 ; color:"yellow";anchors{top:d31.top;left:nabard.right}
          Component.onCompleted:{back.add_object(d33 , "Nabard_Nirou Havaei" , "Line4")}}
      Rectangle
      {
          id:nirou
          width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
          anchors{top:nabard.top;left:d33.right}
          PropertyAnimation {id:l52 ;target:nirou ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
              running: false;}
          MouseArea{
              anchors.fill:parent
              onClicked:{
                 a(nirou ,l52, "Nirou Havaei","l")
              }
          }
       Component.onCompleted:{back.add_object(nirou , "Nirou Havaei", "Node")}
      }
       Rectangle{id:d35 ; height:3 ; width:70 ; color:"yellow";anchors{top:d33.top;left:nirou.right}
       Component.onCompleted:{back.add_object(d35 , "Nirou Havaei_Shahid Kolahdouz" , "Line4")}}
       Rectangle
       {
           id:k;
           width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
           Text{text:qsTr("<b>Line4</b>") ; color:"yellow";anchors.centerIn:parent}
          anchors{top:nirou.top;left:d35.right;topMargin:-10}
          PropertyAnimation {id:l53 ;target:k ; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
              running: false;}
          MouseArea{
              anchors.fill:parent
              onClicked:{
                 a(k ,l53 , "Shahid Kolahdouz","l")
              }
          }
         Component.onCompleted:{back.add_object(k , "Shahid Kolahdouz", "Node")}
       }
       Rectangle
       {
           id:ghaem_pirouzi_1
           width:2 ; height:105; color:"#667C26";
           anchors{top:ghaem.bottom;left:ghaem.left;leftMargin:26}
          Component.onCompleted:{back.add_object(ghaem_pirouzi_1 , "Gha'em_Pirouzi" , "BUS2")}

       }
       Rectangle
       {
           id:ghaem_pirouzi_2
           width:2 ; height:105; color:"#667C26";
           anchors{top:ghaem.bottom;left:ghaem.left;leftMargin:21}
            Component.onCompleted:{back.add_object(ghaem_pirouzi_2 , "Gha'em_Pirouzi" , "BUS2")}

       }
       Rectangle
       {
           id:ghaem_pirouzi_3
           width:242 ; height:2 ; color:"#667C26";
           anchors{top:ghaem_pirouzi_1.bottom;right:ghaem_pirouzi_1.left;topMargin:-6}
            Component.onCompleted:{back.add_object(ghaem_pirouzi_3 , "Gha'em_Pirouzi" , "BUS2")}

       }
       Rectangle
       {
           id:ghaem_pirouzi_4
           width:242 ; height:2 ; color:"#667C26";
           anchors{top:ghaem_pirouzi_1.bottom;right:ghaem_pirouzi_1.left;topMargin:-1}
            Component.onCompleted:{back.add_object(ghaem_pirouzi_4 , "Gha'em_Pirouzi" , "BUS2")}

       }
       Rectangle
       {
           id:ghaem_pirouzi_5
           width:2 ; height:185 ; color:"#667C26";
           anchors{top:ghaem_pirouzi_3.bottom;right:ghaem_pirouzi_3.left;rightMargin:-7}
            Component.onCompleted:{back.add_object(ghaem_pirouzi_5 , "Gha'em_Pirouzi" , "BUS2")}

       }
       Rectangle
       {
           id:ghaem_pirouzi_6
           width:2 ; height:185 ; color:"#667C26";
           anchors{top:ghaem_pirouzi_3.bottom;right:ghaem_pirouzi_3.left;rightMargin:-2}
            Component.onCompleted:{back.add_object(ghaem_pirouzi_6 , "Gha'em_Pirouzi" , "BUS2")}

       }
       Rectangle
       {
           id:pirouzi_R_1
           width:2 ; height:118; color:"#667C26";
           anchors{top:pirouzi.bottom;right:pirouzi.left;rightMargin:-13}
           Component.onCompleted:{back.add_object(pirouzi_R_1 , "Pirouzi_Shahid Rezaei" , "BUS2")}
       }
       Rectangle
       {
           id:pirouzi_R_2
           width:2 ; height:118; color:"#667C26";
           anchors{top:pirouzi.bottom;right:pirouzi.left;rightMargin:-18}
           Component.onCompleted:{back.add_object(pirouzi_R_2 , "Pirouzi_Shahid Rezaei" , "BUS2")}

       }
       Rectangle
       {
           id:pirouzi_R_3
           width:136 ; height:2 ; color:"#667C26";
           anchors{top:pirouzi_R_2.bottom;right:pirouzi_R_2.left;topMargin:-7}
           Component.onCompleted:{back.add_object(pirouzi_R_3 , "Pirouzi_Shahid Rezaei" , "BUS2")}

       }
       Rectangle
       {
           id:pirouzi_R_4
           width:136 ; height:2 ; color:"#667C26";
           anchors{top:pirouzi_R_2.bottom;right:pirouzi_R_2.left;topMargin:-2}
           Component.onCompleted:{back.add_object(pirouzi_R_4 , "Pirouzi_Shahid Rezaei" , "BUS2")}

       }
       Rectangle
       {
           id:r_javanmard_1
           width:100 ; height:2 ; color:"#667C26";
           anchors{top:pirouzi_R_3.top;right:r.left;}
           Component.onCompleted:{back.add_object(r_javanmard_1 , "Shahid Rezaei_Payaneh Javanmard" , "BUS2")}

       }
       Rectangle
       {
           id:r_javanmard_2
           width:100 ; height:2 ; color:"#667C26";
           anchors{top:pirouzi_R_4.top;right:r.left;}
           Component.onCompleted:{back.add_object(r_javanmard_2 , "Shahid Rezaei_Payaneh Javanmard" , "BUS2")}

       }
       Rectangle
       {
           id:r_javanmard_3
           width:2 ; height:165 ; color:"#667C26";
           anchors{top:r_javanmard_2.bottom;right:r_javanmard_1.left;topMargin:-5;rightMargin:-7}
          Component.onCompleted:{back.add_object(r_javanmard_3 , "Shahid Rezaei_Payaneh Javanmard" , "BUS2")}

       }
       Rectangle
       {
           id:r_javanmard_4
           width:2 ; height:165 ; color:"#667C26";
           anchors{top:r_javanmard_2.bottom;right:r_javanmard_1.left;topMargin:-5;rightMargin:-2}
           Component.onCompleted:{back.add_object(r_javanmard_4 , "Shahid Rezaei_Payaneh Javanmard" , "BUS2")}

       }
       Rectangle
       {
           id:javanmard;
           width: 50 ;  height : 50 ; radius:180 ; color:"#00ff55"
           Text{text:qsTr("BUS2") ;anchors.centerIn:parent}
            anchors{top:r_javanmard_3.bottom;right:r_javanmard_3.left;rightMargin:-25}
            PropertyAnimation {id:r0 ;target:javanmard; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
                running: false;}
            MouseArea{
                anchors.fill:parent
                onClicked:{
                   a(javanmard , r0 , "Payaneh Javanmard","b")
                }
            }
        Component.onCompleted:{back.add_object(javanmard , "Payaneh Javanmard" , "BUS")}
       }
       Rectangle
       {
           id:ghaem_ansary_1
           width:2 ; height:30 ; color:"#667C26";
           anchors{bottom:ghaem.top;right:ghaem.left;rightMargin:-22}
          Component.onCompleted:{back.add_object(ghaem_ansary_1 , "Gha'em_Khajeh Abdollah-e Ansari" , "BUS2")}

       }
       Rectangle
       {
           id:ghaem_ansary_2
           width:2 ; height:30 ; color:"#667C26";
           anchors{bottom:ghaem.top;right:ghaem.left;rightMargin:-27}
           Component.onCompleted:{back.add_object(ghaem_ansary_2 , "Gha'em_Khajeh Abdollah-e Ansari" , "BUS2")}

       }
       Rectangle
       {
           id:ghaem_ansary_3
           width:380 ; height:2  ; color:"#667C26";
           anchors{top:ghaem_ansary_2.top;right:ghaem_ansary_2.left;}
          Component.onCompleted:{back.add_object(ghaem_ansary_3 , "Gha'em_Khajeh Abdollah-e Ansari" , "BUS2")}

       }
       Rectangle
       {
           id:ghaem_ansary_4
           width:380 ; height:2 ; color:"#667C26";
           anchors{top:ghaem_ansary_2.top;right:ghaem_ansary_2.left;topMargin:5}
           Component.onCompleted:{back.add_object(ghaem_ansary_4 , "Gha'em_Khajeh Abdollah-e Ansari" , "BUS2")}

       }
       Rectangle
       {
           id:ansary;
           width: 50 ;  height : 50 ; radius:180 ; color:"#00ff55"
           Text{text:qsTr("BUS2") ;anchors.centerIn:parent}
           anchors{top:ghaem_ansary_3.bottom ;right:ghaem_ansary_3.left;topMargin:-23;}
           PropertyAnimation {id:r1 ;target:ansary; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
               running: false;}
           MouseArea{
               anchors.fill:parent
               onClicked:{
                  a(ansary,r1, "Khajeh Abdollah-e Ansari","b")
               }
           }
          Component.onCompleted:{back.add_object(ansary , "Khajeh Abdollah-e Ansari" , "BUS")}
       }
       Rectangle
       {
           id:ebnesina_tehranpars_1
           width:2 ; height:73 ; color:"#1B8A6B";
           anchors{top:d27.bottom;right:eb.left;topMargin:13;rightMargin:-18}
           Component.onCompleted:{back.add_object(ebnesina_tehranpars_1 , "Tehran Pars_Ebn-e Sina" , "BUS1")}

       }
       Rectangle
       {
           id:ebnesina_tehranpars_2
           width:2 ; height:73  ; color:"#1B8A6B";
          anchors{top:d27.bottom;right:eb.left;topMargin:13;rightMargin:-13}
           Component.onCompleted:{back.add_object(ebnesina_tehranpars_2 , "Tehran Pars_Ebn-e Sina" , "BUS1")}

       }
       Rectangle
       {
           id:ebnesina_tehranpars_3
           width:300 ; height:2  ; color:"#1B8A6B";
           anchors{top:ebnesina_tehranpars_2.bottom;left:ebnesina_tehranpars_2.right;topMargin:-7}
           Component.onCompleted:{back.add_object(ebnesina_tehranpars_3 , "Tehran Pars_Ebn-e Sina" , "BUS1")}

       }
       Rectangle
       {
           id:ebnesina_tehranpars_4
           width:300 ; height:2 ; color:"#1B8A6B";
           anchors{top:ebnesina_tehranpars_2.bottom;left:ebnesina_tehranpars_2.right;topMargin:-2}
           Component.onCompleted:{back.add_object(ebnesina_tehranpars_4 , "Tehran Pars_Ebn-e Sina" , "BUS1")}

       }
       Rectangle
       {
           id:tehranpars;
           width: 50 ;  height : 50 ; radius:180 ; color:"#00ff55"
           Text{text:qsTr("BUS1") ;anchors.centerIn:parent}
           anchors{top:ebnesina_tehranpars_3.top ;left:ghaem_ansary_3.right;topMargin:-23;leftMargin:-30}
           PropertyAnimation {id:r2 ;target:tehranpars; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
               running: false;}
           MouseArea{
               anchors.fill:parent
               onClicked:{
                  a(tehranpars,r2 , "Tehran Pars","b")
               }
           }
         Component.onCompleted:{back.add_object(tehranpars , "Tehran Pars" , "BUS")}
       }
       Rectangle
       {
           id:emam_ebnesina_1
           width:2 ; height:118  ; color:"#1B8A6B";
          anchors{bottom:eb.bottom;right:eb.left;rightMargin:-13;bottomMargin:30}
          Component.onCompleted:{back.add_object(emam_ebnesina_1 , "Emam Hossein_Ebn-e Sina" , "BUS1")}

       }
       Rectangle
       {
           id:emam_ebnesina_2
           width:2 ; height:118  ; color:"#1B8A6B";
           anchors{bottom:eb.bottom;right:eb.left;rightMargin:-18;bottomMargin:30}
           Component.onCompleted:{back.add_object(emam_ebnesina_2 , "Emam Hossein_Ebn-e Sina" , "BUS1")}

       }
       Rectangle
       {
           id:emam_ebnesina_3
           width:77 ; height:2  ; color:"#1B8A6B";
           anchors{top:emam_ebnesina_2.top;right:emam_ebnesina_2.left;}
           Component.onCompleted:{back.add_object(emam_ebnesina_3 , "Emam Hossein_Ebn-e Sina" , "BUS1")}

       }
       Rectangle
       {
           id:emam_ebnesina_4
           width:77 ; height:2 ; color:"#1B8A6B";
           anchors{top:emam_ebnesina_2.top;right:emam_ebnesina_2.left;topMargin: 5}
           Component.onCompleted:{back.add_object(emam_ebnesina_4 , "Emam Hossein_Ebn-e Sina" , "BUS1")}

       }
       Rectangle
       {
           id:dowlat_emam_1
           width:145 ; height:2  ; color:"#1B8A6B";
           anchors{top:emam_ebnesina_3.top;right:e.left;}
          Component.onCompleted:{back.add_object(dowlat_emam_1 , "Darvazeh Dowlat_Emam Hossein" , "BUS1")}

       }
       Rectangle
       {
           id:dowlat_emam_2
           width:145 ; height:2 ; color:"#1B8A6B";
           anchors{top:emam_ebnesina_4.top;right:e.left;}
           Component.onCompleted:{back.add_object(dowlat_emam_2 , "Darvazeh Dowlat_Emam Hossein" , "BUS1")}

       }
       Rectangle
       {
           id:dowlat_emam_3
           width:2 ; height:85  ; color:"#1B8A6B";
           anchors{top:dowlat_emam_1.top;right:dowlat_emam_2.left;}
           Component.onCompleted:{back.add_object(dowlat_emam_3 , "Darvazeh Dowlat_Emam Hossein" , "BUS1")}

       }
       Rectangle
       {
           id:dowlat_emam_4
           width:2 ; height:85 ; color:"#1B8A6B";
           anchors{top:dowlat_emam_1.top;right:dowlat_emam_2.left;rightMargin:-5}
           Component.onCompleted:{back.add_object(dowlat_emam_4 , "Darvazeh Dowlat_Emam Hossein" , "BUS1")}

       }
       Rectangle
       {
           id:dowlat_emam_5
           width:47 ; height:2  ; color:"#1B8A6B";
           anchors{top:dowlat_emam_3.bottom;right:dowlat_emam_3.left;rightMargin:-7}
          Component.onCompleted:{back.add_object(dowlat_emam_5 , "Darvazeh Dowlat_Emam Hossein" , "BUS1")}

       }
       Rectangle
       {
           id:dowlat_emam_6
           width:47 ; height:2 ; color:"#1B8A6B";
           anchors{top:dowlat_emam_3.bottom;right:dowlat_emam_3.left;topMargin:-5;rightMargin:-7}
          Component.onCompleted:{back.add_object(dowlat_emam_6 , "Darvazeh Dowlat_Emam Hossein" , "BUS1")}

       }
       Rectangle
       {
           id:ferdowsi_dowlat_1
           width:2 ; height:25  ; color:"#1B8A6B";
           anchors{top:dowlat.bottom;right:dowlat.left;rightMargin:-13}
          Component.onCompleted:{back.add_object(ferdowsi_dowlat_1 , "Ferdowsi_Darvazeh Dowlat" , "BUS1")}

       }
       Rectangle
       {
           id:ferdowsi_dowlat_2
           width:2 ; height:25 ; color:"#1B8A6B";
           anchors{top:dowlat.bottom;right:dowlat.left;rightMargin:-18}
           Component.onCompleted:{back.add_object(ferdowsi_dowlat_2 , "Ferdowsi_Darvazeh Dowlat" , "BUS1")}

       }
       Rectangle
       {
           id:ferdowsi_dowlat_3
           width:144 ; height:2  ; color:"#1B8A6B";
           anchors{top:ferdowsi_dowlat_2.bottom;right:ferdowsi_dowlat_2.left;topMargin:-2}
          Component.onCompleted:{back.add_object(ferdowsi_dowlat_3 , "Ferdowsi_Darvazeh Dowlat" , "BUS1")}

       }
       Rectangle
       {
           id:ferdowsi_dowlat_4
           width:144 ; height:2 ; color:"#1B8A6B";
           anchors{top:ferdowsi_dowlat_2.bottom;right:ferdowsi_dowlat_2.left;topMargin:-7;}
          Component.onCompleted:{back.add_object(ferdowsi_dowlat_4 , "Ferdowsi_Darvazeh Dowlat" , "BUS1")}

       }
       Rectangle
       {
           id:ferdowsi_dowlat_5
           width:2 ; height:65  ; color:"#1B8A6B";
           anchors{bottom:ferdowsi_dowlat_3.top;right:ferdowsi_dowlat_3.left;rightMargin:-2}
          Component.onCompleted:{back.add_object(ferdowsi_dowlat_5 , "Ferdowsi_Darvazeh Dowlat" , "BUS1")}

       }
       Rectangle
       {
           id:ferdowsi_dowlat_6
           width:2 ; height:65 ; color:"#1B8A6B";
           anchors{bottom:ferdowsi_dowlat_3.top;right:ferdowsi_dowlat_3.left;rightMargin:-7}
          Component.onCompleted:{back.add_object(ferdowsi_dowlat_6 , "Ferdowsi_Darvazeh Dowlat" , "BUS1")}

       }
       Rectangle
       {
           id:enghelab_ferdowsi_1
           width:210 ; height:2  ; color:"#1B8A6B";
           anchors{top:ferdowsi_dowlat_5.top;right:ferdowsi_dowlat_5.left;rightMargin:-5}
          Component.onCompleted:{back.add_object(enghelab_ferdowsi_1, "Ferdowsi_Meydan-e Enghelab-e Eslami" , "BUS1")}

       }
       Rectangle
       {
           id:enghelab_ferdowsi_2
           width:210 ; height:2 ; color:"#1B8A6B";
           anchors{top:ferdowsi_dowlat_5.top;right:ferdowsi_dowlat_5.left;topMargin:5;rightMargin:-5}
          Component.onCompleted:{back.add_object(enghelab_ferdowsi_2 , "Ferdowsi_Meydan-e Enghelab-e Eslami" , "BUS1")}

       }
       Rectangle
       {
           id:lines_1
           width:2 ; height:18  ; color:"#1B8A6B";
           anchors{top:ferdowsi.bottom;right:ferdowsi.left;rightMargin:-13}
           Component.onCompleted:{
               back.add_object(lines_1, "Ferdowsi_Darvazeh Dowlat" , "BUS1")
               back.add_object(lines_1 , "Ferdowsi_Meydan-e Enghelab-e Eslami" , "BUS1")
           }


       }
       Rectangle
       {
           id:lines_2
           width:2 ; height:18 ; color:"#1B8A6B";
           anchors{top:ferdowsi.bottom;right:ferdowsi.left;rightMargin:-18}
          Component.onCompleted:{
              back.add_object(lines_2 , "Ferdowsi_Darvazeh Dowlat" , "BUS1")
              back.add_object(lines_2 , "Ferdowsi_Meydan-e Enghelab-e Eslami" , "BUS1")
          }

       }
       Rectangle
       {
           id:lines_3
           width:2 ; height:18  ; color:"#1B8A6B";
           anchors{top:meydan.bottom;right:meydan.left;rightMargin:-13}
           Component.onCompleted:{
               back.add_object(lines_3 , "Meydan-e Enghelab-e Eslami_Ostad Mo'in" , "BUS1")
               back.add_object(lines_3 , "Ferdowsi_Meydan-e Enghelab-e Eslami" , "BUS1")
           }

       }
       Rectangle
       {
           id:lines_4
           width:2 ; height:18 ; color:"#1B8A6B";
           anchors{top:meydan.bottom;right:meydan.left;rightMargin:-18}
           Component.onCompleted:{
               back.add_object(lines_4 , "Meydan-e Enghelab-e Eslami_Ostad Mo'in" , "BUS1")
               back.add_object(lines_4 , "Ferdowsi_Meydan-e Enghelab-e Eslami" , "BUS1")
           }

       }
       Rectangle
       {
           id:lines_5
           width:2 ; height:18  ; color:"#1B8A6B";
           anchors{top:moein.bottom;right:moein.left;rightMargin:-13}
           Component.onCompleted:
           {
               back.add_object(lines_5 , "Meydan-e Enghelab-e Eslami_Ostad Mo'in" , "BUS1")
              back.add_object(lines_5 , "Meydan-e Azadi_Ostad Mo'in" , "BUS1")
           }

       }
       Rectangle
       {
           id:lines_6
           width:2; height:18 ; color:"#1B8A6B";
           anchors{top:moein.bottom;right:moein.left;rightMargin:-18}
           Component.onCompleted:
           {
               back.add_object(lines_6 , "Meydan-e Enghelab-e Eslami_Ostad Mo'in" , "BUS1")
               back.add_object(lines_6 , "Meydan-e Azadi_Ostad Mo'in" , "BUS1")
           }

       }
       Rectangle
       {
           id:lines_7
           width:2 ; height:18  ; color:"#1B8A6B";
           anchors{top:azadi.bottom;right:azadi.left;rightMargin:-13}
           Component.onCompleted:{back.add_object(lines_7 , "Meydan-e Azadi_Ostad Mo'in" , "BUS1")}

       }
       Rectangle
       {
           id:lines_8
           width:2 ; height:18 ; color:"#1B8A6B";
           anchors{top:azadi.bottom;right:azadi.left;rightMargin:-18}
           Component.onCompleted:{back.add_object(lines_8 , "Meydan-e Azadi_Ostad Mo'in" , "BUS1")}

       }
       Rectangle
       {
           id:moein_enghelab_1
           width:257 ; height:2  ; color:"#1B8A6B";
           anchors{top:enghelab_ferdowsi_1.top;right:enghelab_ferdowsi_1.left;rightMargin:-5}
           Component.onCompleted:{back.add_object(moein_enghelab_1 , "Meydan-e Enghelab-e Eslami_Ostad Mo'in" , "BUS1")}

       }
       Rectangle
       {
           id:moein_enghelab_2
           width:257 ; height:2 ; color:"#1B8A6B";
           anchors{top:enghelab_ferdowsi_2.top;right:enghelab_ferdowsi_2.left;rightMargin:-5}
           Component.onCompleted:{back.add_object(moein_enghelab_2 , "Meydan-e Enghelab-e Eslami_Ostad Mo'in" , "BUS1")}


       }
       Rectangle
       {
           id:azadi_moein_1
           width:65 ; height:2  ; color:"#1B8A6B";
           anchors{top:moein_enghelab_1.top;right:moein_enghelab_1.left;rightMargin:-5}
           Component.onCompleted:{back.add_object(azadi_moein_1 , "Meydan-e Azadi_Ostad Mo'in" , "BUS1")}

       }
       Rectangle
       {
           id:azadi_moein_2
           width:65 ; height:2 ; color:"#1B8A6B";
           anchors{top:moein_enghelab_2.top;right:moein_enghelab_2.left;rightMargin:-5}
           Component.onCompleted:{back.add_object(azadi_moein_2 , "Meydan-e Azadi_Ostad Mo'in" , "BUS1")}

       }
       Rectangle
       {
           id:bimeh_azadi_1
           width:127 ; height:2  ; color:"#1B8A6B";
           anchors{top:azadi.top;right:azadi.left;topMargin:11}
           Component.onCompleted:{back.add_object(bimeh_azadi_1 , "Bimeh_Meydan-e Azadi" , "BUS1")}

       }
       Rectangle
       {
           id:bimeh_azadi_2
           width:127 ; height:2 ; color:"#1B8A6B";
           anchors{top:azadi.top;right:azadi.left;topMargin:16}
          Component.onCompleted:{back.add_object(bimeh_azadi_2 , "Bimeh_Meydan-e Azadi" , "BUS1")}
       }
       Rectangle
       {
           id:bimeh;
           width: 50 ;  height : 50 ; radius:180 ; color:"#00ff55"
           Text{text:qsTr("BUS1") ;anchors.centerIn:parent}
           anchors{top:bimeh_azadi_1.top ;right:bimeh_azadi_1.left;topMargin:-22;leftMargin:-40}
           PropertyAnimation {id:r3 ;target:bimeh; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
               running: false;}
           MouseArea{
               anchors.fill:parent
               onClicked:{
                  a(bimeh,r3, "Bimeh","b")
               }
           }
         Component.onCompleted:{back.add_object(bimeh , "Bimeh" , "BUS")}
       }
       Rectangle
       {
           id:sadr_tajrish_1
           width:140 ; height:2  ; color:"#2C3539";
           anchors{top:tajrish.top;right:tajrish.left;topMargin:22}
          Component.onCompleted:{back.add_object(sadr_tajrish_1 , "Shahid Sadr_Tajrish" , "BUS3")}

       }
       Rectangle
       {
           id:sadr_tajrish_2
           width:140 ; height:2 ; color:"#2C3539";
           anchors{top:tajrish.top;right:tajrish.left;topMargin:27}
           Component.onCompleted:{back.add_object(sadr_tajrish_2 , "Shahid Sadr_Tajrish" , "BUS3")}
       }
       Rectangle
       {
           id:sadr_tajrish_3
           width:2 ; height:80  ; color:"#2C3539";
           anchors{top:sadr_tajrish_1.bottom;right:sadr_tajrish_1.left;rightMargin:-2}
           Component.onCompleted:{back.add_object(sadr_tajrish_3 , "Shahid Sadr_Tajrish" , "BUS3")}

       }
       Rectangle
       {
           id:sadr_tajrish_4
           width:2 ; height:80 ; color:"#2C3539";
           anchors{top:sadr_tajrish_1.bottom;right:sadr_tajrish_1.left;rightMargin:-7}
           Component.onCompleted:{back.add_object(sadr_tajrish_4 , "Shahid Sadr_Tajrish" , "BUS3")}

       }
       Rectangle
       {
           id:sadr;
           width: 50 ;  height : 50 ; radius:180 ; color:"#00ff55"
           Text{text:qsTr("BUS3") ;anchors.centerIn:parent}
           anchors{top:sadr_tajrish_3.bottom ;right:sadr_tajrish_3.left;rightMargin:-27}
           PropertyAnimation {id:r4 ;target:sadr; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
               running: false;}
           MouseArea{
               anchors.fill:parent
               onClicked:{
                  a(sadr,r4, "Shahid Sadr","b")
               }
           }
           Component.onCompleted:{back.add_object(sadr , "Shahid Sadr" , "BUS")}
       }
       Rectangle
       {
           id:tajrish_mirdamad_1
           width:30 ; height:2  ; color:"#2C3539";
           anchors{top:sadr_tajrish_1.top;left:sadr_tajrish_1.right;leftMargin:50}
           Component.onCompleted:{back.add_object(tajrish_mirdamad_1 , "Tajrish_Mirdamad" , "BUS3")}

       }
       Rectangle
       {
           id:tajrish_mirdamad_2
           width:30 ; height:2 ; color:"#2C3539";
            anchors{top:sadr_tajrish_2.top;left:sadr_tajrish_2.right;leftMargin:50}
            Component.onCompleted:{back.add_object(tajrish_mirdamad_2 , "Tajrish_Mirdamad" , "BUS3")}

       }
       Rectangle
       {
           id:tajrish_mirdamad_3
           width:2 ; height:222  ; color:"#2C3539";
           anchors{top:tajrish_mirdamad_1.bottom;right:tajrish_mirdamad_1.left;rightMargin:-25}
          Component.onCompleted:{back.add_object(tajrish_mirdamad_3 , "Tajrish_Mirdamad" , "BUS3")}

       }
       Rectangle
       {
           id:tajrish_mirdamad_4
           width:2 ; height:222 ; color:"#2C3539";
           anchors{top:tajrish_mirdamad_1.bottom;right:tajrish_mirdamad_1.left;rightMargin:-30}
           Component.onCompleted:{back.add_object(tajrish_mirdamad_4 , "Tajrish_Mirdamad" , "BUS3")}

       }
       Rectangle
       {
           id:tajrish_mirdamad_5
           width:41 ; height:2  ; color:"#2C3539";
           anchors{top:tajrish_mirdamad_3.bottom;right:tajrish_mirdamad_3.left;topMargin:-2;rightMargin:-5}
           Component.onCompleted:{back.add_object(tajrish_mirdamad_5 , "Tajrish_Mirdamad" , "BUS3")}

       }
       Rectangle
       {
           id:tajrish_mirdamad_6
           width:41 ; height:2 ; color:"#2C3539";
           anchors{top:tajrish_mirdamad_3.bottom;right:tajrish_mirdamad_3.left;topMargin:-7;rightMargin:-5}
           Component.onCompleted:{back.add_object(tajrish_mirdamad_6 , "Tajrish_Mirdamad" , "BUS3")}
       }
       Rectangle
       {
           id:mirdamad_v_1
           width:325 ; height:2 ; color:"#2C3539";
           anchors{top:tajrish_mirdamad_5.top;right:tajrish_mirdamad_5.left;rightMargin:30}
           Component.onCompleted:{back.add_object(mirdamad_v_1 , "Mirdamad_Meydan-e Hazrat-e ValiAsr" , "BUS3")}

       }
       Rectangle
       {
           id:mirdamad_v_2
           width:325 ; height:2 ; color:"#2C3539";
           anchors{top:tajrish_mirdamad_6.top;right:tajrish_mirdamad_6.left;rightMargin:30}
           Component.onCompleted:{back.add_object(mirdamad_v_2 , "Mirdamad_Meydan-e Hazrat-e ValiAsr" , "BUS3")}
       }
       Rectangle
       {
           id:mirdamad_v_3
           width:2 ; height:251  ; color:"#2C3539";
           anchors{top:mirdamad_v_1.bottom;right:mirdamad_v_1.left;topMargin:-5;rightMargin:-2}
           Component.onCompleted:{back.add_object(mirdamad_v_3 , "Mirdamad_Meydan-e Hazrat-e ValiAsr" , "BUS3")}

       }
       Rectangle
       {
           id:mirdamad_v_4
          width:2 ; height:251  ; color:"#2C3539";
           anchors{top:mirdamad_v_1.bottom;right:mirdamad_v_1.left;topMargin:-5;rightMargin:-7}
           Component.onCompleted:{back.add_object(mirdamad_v_4 , "Mirdamad_Meydan-e Hazrat-e ValiAsr" , "BUS3")}
       }
       Rectangle
       {
           id:mirdamad_v_5
           width:98 ; height:2  ; color:"#2C3539";
           anchors{top:mirdamad_v_3.bottom;left:mirdamad_v_3.right;topMargin:-2}
           Component.onCompleted:{back.add_object(mirdamad_v_5 , "Mirdamad_Meydan-e Hazrat-e ValiAsr" , "BUS3")}

       }
       Rectangle
       {
           id:mirdamad_v_6
           width:98 ; height:2 ; color:"#2C3539";
           anchors{top:mirdamad_v_3.bottom;left:mirdamad_v_3.right;topMargin:-7}
           Component.onCompleted:{back.add_object(mirdamad_v_6 , "Mirdamad_Meydan-e Hazrat-e ValiAsr" , "BUS3")}
       }
       Rectangle
       {
           id:v_rahahan_1
           width:30 ; height:2  ; color:"#2C3539";
           anchors{top:mirdamad_v_5.top;left:v.right}
          Component.onCompleted:{back.add_object(v_rahahan_1 , "Meydan-e Hazrat-e ValiAsr_Rahahan" , "BUS3")}

       }
       Rectangle
       {
           id:v_rahahan_2
           width:30 ; height:2 ; color:"#2C3539";
           anchors{top:mirdamad_v_6.top;left:v.right}
           Component.onCompleted:{back.add_object(v_rahahan_2 , "Meydan-e Hazrat-e ValiAsr_Rahahan" , "BUS3")}
       }
       Rectangle
       {
           id:v_rahahan_3
           width:2 ; height:281  ; color:"#2C3539";
           anchors{top:v_rahahan_1.bottom;left:v_rahahan_1.right;topMargin:-5;leftMargin:-7}
           Component.onCompleted:{back.add_object(v_rahahan_3 , "Meydan-e Hazrat-e ValiAsr_Rahahan" , "BUS3")}

       }
       Rectangle
       {
           id:v_rahahan_4
          width:2 ; height:281  ; color:"#2C3539";
           anchors{top:v_rahahan_1.bottom;left:v_rahahan_1.right;topMargin:-5;leftMargin:-2}
           Component.onCompleted:{back.add_object(v_rahahan_4 , "Meydan-e Hazrat-e ValiAsr_Rahahan" , "BUS3")}
       }
       Rectangle
       {
           id:v_rahahan_5
           width:28 ; height:2  ; color:"#2C3539";
           anchors{top:v_rahahan_3.bottom;right:v_rahahan_3.left;topMargin:-2;rightMargin:-5}
           Component.onCompleted:{back.add_object(v_rahahan_5 , "Meydan-e Hazrat-e ValiAsr_Rahahan" , "BUS3")}

       }
       Rectangle
       {
           id:v_rahahan_6
           width:28 ; height:2 ; color:"#2C3539";
           anchors{top:v_rahahan_3.bottom;right:v_rahahan_3.left;topMargin:-7;rightMargin:-5}
           Component.onCompleted:{back.add_object(v_rahahan_6 , "Meydan-e Hazrat-e ValiAsr_Rahahan" , "BUS3")}
       }
       Rectangle
       {
           id:rahahan_shahrak_1
           width:130 ; height:2  ; color:"#2C3539";
           anchors{top:v_rahahan_5.top;right:rahahan.left;}
           Component.onCompleted:{back.add_object(rahahan_shahrak_1 , "Rahahan_Shahrak-e Shari'ati" , "BUS3")}

       }
       Rectangle
       {
           id:rahahan_shahrak_2
           width:130 ; height:2 ; color:"#2C3539";
           anchors{top:v_rahahan_6.top;right:rahahan.left;}
           Component.onCompleted:{back.add_object(rahahan_shahrak_2 , "Rahahan_Shahrak-e Shari'ati" , "BUS3")}
       }
       Rectangle
       {
           id:rahahan_shahrak_3
           width:2 ; height:182  ; color:"#2C3539";
           anchors{top:rahahan_shahrak_1.bottom;right:rahahan_shahrak_2.left;topMargin:-5;rightMargin:-2}
           Component.onCompleted:{back.add_object(rahahan_shahrak_3 , "Rahahan_Shahrak-e Shari'ati" , "BUS3")}

       }
       Rectangle
       {
           id:rahahan_shahrak_4
          width:2; height:182  ; color:"#2C3539";
           anchors{top:rahahan_shahrak_1.bottom;right:rahahan_shahrak_2.left;topMargin:-5;rightMargin:-7}
           Component.onCompleted:{back.add_object(rahahan_shahrak_4 , "Rahahan_Shahrak-e Shari'ati" , "BUS3")}
       }
       Rectangle
       {
           id:shahrak;
           width: 50 ;  height : 50 ; radius:180 ; color:"#00ff55"
           Text{text:qsTr("BUS3") ;anchors.centerIn:parent}
            anchors{top:rahahan_shahrak_3.bottom ;right:rahahan_shahrak_3.left;rightMargin:-27}
            PropertyAnimation {id:r5 ;target:shahrak; property: "color";from:"#039BE5";to:"#dcdcdc";duration:500 ;loops:Animation.Infinite
                running: false;}
            MouseArea{
                anchors.fill:parent
                onClicked:{
                   a(shahrak, r5 ,"Shahrak-e Shari'ati","b")
                }
            }
           Component.onCompleted:{back.add_object(shahrak , "Shahrak-e Shari'ati" , "BUS")}
       }
       Text{text:"Kahrizak"; anchors{top:kahrizak.bottom ; left:kahrizak.left ; topMargin:5}}
       Text{text:"Shahrak-e Shari'ati";anchors{top:shahrak.bottom ; left:shahrak.left ; topMargin:5 ; leftMargin:-27}}
       Text{text:"Payaneh Javanmard";anchors{top:javanmard.bottom ; left:javanmard.left ; topMargin:5 ; leftMargin:-25}}
       Text{text:"Azadegan"; anchors{top:azadegan.bottom ; left:azadegan.left ; topMargin:5;}}
       Text{text:"Haram-e Hazrat-e Abdolazim"; anchors{top:h.bottom ; left:h.left ; topMargin:3 ;leftMargin:-55}}

       Text{text:"Tehran Pars";anchors{top:tehranpars.bottom ; left:tehranpars.right ; topMargin:-35 ; leftMargin:20}}
       Text{text:"Shahid Kolahdouz";anchors{top:k.bottom ; left:k.right ; topMargin:-35 ; leftMargin:20}}
       Text{text:"Gha'em";anchors{top:ghaem.bottom ; left:ghaem.right ; topMargin:-35 ; leftMargin:17}}
       Text{text:"Khajeh Abdollah-e Ansari";anchors{bottom:ansary.top ; left:ansary.right;bottomMargin:10;leftMargin:-100}}
       Text{text:"Tajrish";anchors{top:tajrish.top ; left:tajrish.right;leftMargin:-95}}
       Text{text:"Shahid Sadr";anchors{top:sadr.top ; right:sadr.left;topMargin:17 ;rightMargin:12}}
       Text{text:"Chaharbagh";anchors{top:chaharbagh.top ; right:chaharbagh.left;topMargin:17 ;rightMargin:12}}
       Text{text:"Kouhsar";anchors{top:kouhsar.top ; right:kouhsar.left;topMargin:17 ;rightMargin:12}}
       Text{text:"Bimeh";anchors{top:bimeh.top ; right:bimeh.left;topMargin:17 ;rightMargin:12}}
       Text{text:"Allameh Jafari";anchors{top:jafari.top ; right:jafari.left;topMargin:5 ;rightMargin:12}}
       Text{text:"Kashani";anchors{top:kashani.top ; right:kashani.left;topMargin:-10 ;rightMargin:5}}
       Text{text:"Eram-e Sabz";anchors{top:sabz.top ; right:sabz.left;topMargin:5 ;rightMargin:12}}
       Text{text:"Meydan-e Azadi";anchors{top:azadi.top ; right:azadi.left;topMargin:-14 ;rightMargin:5}}

       Text{text:"Ostad Mo'in";anchors{top:moein.top ; right:moein.left;topMargin:-20 ;rightMargin:-45}}
       Text{text:"Shademan";anchors{top:shadman.top ; right:shadman.left;topMargin:-20 ;rightMargin:-50}}
       Text{text:"Towhid";anchors{top:tohid.top ; right:tohid.left;topMargin:-20 ;rightMargin:-45}}
       Text{text:"Meydan-e Enghelab-e Eslami";anchors{top:meydan.bottom ; right:meydan.left;topMargin:27 ;rightMargin:-100}}
       Text{text:"Teatr-e Shahr";anchors{top:teatr.top ; right:teatr.left;topMargin:-20 ;rightMargin:-5}}
       Text{text:"Ferdowsi";anchors{top:ferdowsi.top ; right:ferdowsi.left;topMargin:-20 ;rightMargin:-45}}
       Text{text:"Darvazeh Shemiran";anchors{top:shemiran.top ; right:shemiran.left;topMargin:-20 ;rightMargin:-100}}
       Text{text:"Ebn-e Sina";anchors{top:eb.bottom ; right:eb.left;}}

       Text{text:"Pirouzi";anchors{top:pirouzi.top ; right:pirouzi.left;topMargin:-20 ;rightMargin:-8}}
       Text{text:"Nabard";anchors{top:nabard.top ; right:nabard.left;topMargin:-20 ;rightMargin:-36}}
       Text{text:"Nirou Havaei";anchors{top:nirou.top ; right:nirou.left;topMargin:-20 ;rightMargin:-65}}
       Text{text:"Yadegar-e Emam";anchors{top:yadegar.top ; right:yadegar.left;topMargin:-20 ;rightMargin:-65}}
       Text{text:"Boostan-e laleh";anchors{top:boostan.top ; right:boostan.left;topMargin:-20 ;rightMargin:-5}}
       Text{text:"Shahid Rezaei";anchors{top:r.top ; right:r.left;topMargin:30 ;}}
       Text{text:"Meydan-e Shohada";anchors{top:sh.top ; right:sh.left;topMargin:30}}
       Text{text:"Emam Hossein";anchors{top:e.top ; left:e.right ;topMargin:-20 ;}}
       Text{text:"Sohrevardi";anchors{top:sohrevardi.bottom ; left:sohrevardi.right ;topMargin:10 ; leftMargin:-45}}

       Text{text:"Shahid Ghodousi";anchors{top:gh.top ; left:gh.right ; topMargin:-8 ; leftMargin:-125}}
       Text{text:"Shahid Zeynoddin";anchors{top:z.bottom ; left:z.right ;topMargin:10 ; leftMargin:-65}}
       Text{text:"Aghdasiyeh";anchors{top:aghdasiyeh.bottom ; left:aghdasiyeh.right ;topMargin:10 ; leftMargin:-45}}
       Text{text:"Merza-ye Shirazi";anchors{top:shirazi.top ; left:shirazi.right ; topMargin:-25 ; leftMargin:-70}}
       Text{text:"Meydan-e Jahad";anchors{top:jahad.top ; left:jahad.right ; topMargin:-10 ; leftMargin:-120}}
       Text{text:"Meydan-e Hazrat-e ValiAsr";anchors{top:v.top ; left:v.right ; topMargin:-10  }}
       Text{text:"Moniriyeh";anchors{top:moniriyeh.top ; right:moniriyeh.left ; topMargin:5 ; rightMargin:10}}
       Text{text:"Mahdiyeh";anchors{top:mahdiyeh.top ; right:mahdiyeh.left ; topMargin:5 ; rightMargin:10}}
       Text{text:"Rahahan";anchors{top:rahahan.top ; right:rahahan.left ; topMargin:-10 ; rightMargin:10}}
       Text{text:"Javadiyeh";anchors{top:javadiyeh.top ; right:javadiyeh.left ; topMargin:5; rightMargin:10}}
       Text{text:"Zamzam";anchors{top:zamzam.top ; right:zamzam.left ; topMargin:5; rightMargin:10}}

       Text{text:"Gheytariyeh";anchors{top:gheytariyeh.top ; right:gheytariyeh.left ; topMargin:7 ; rightMargin:10}}
       Text{text:"Gholhak";anchors{top:gholhak.top ; right:gholhak.left ; topMargin:7 ; rightMargin:10}}
       Text{text:"Mirdamad";anchors{top:mirdamad.top ; right:mirdamad.left ; topMargin:-10 ; rightMargin:5}}
       Text{text:"Shahid Haghani";anchors{top:ha.top ; right:ha.left ; topMargin:4 ; rightMargin:10}}
       Text{text:"Shahid Beheshti";anchors{top:beheshti.top ; right:beheshti.left ; topMargin:-7 ; rightMargin:3}}
       Text{text:"Shahid Mofatteh";anchors{top:mofatteh.top ; right:mofatteh.left ; topMargin:4 ; rightMargin:10}}
       Text{text:"Haftom-e Tir";anchors{top:hafte_tir.top ; left:hafte_tir.right ; topMargin:-10 ; leftMargin:10}}
       Text{text:"Taleghani";anchors{top:taleghani.top ; right:taleghani.left ; topMargin:-10}}
       Text{text:"Darvazeh Dowlat";anchors{top:dowlat.top ; left:dowlat.right ; topMargin:30 }}
       Text{text:"Panzdah-e Khordad";anchors{top:khordad.top ; right:khordad.left ; topMargin:7 ; rightMargin:10}}
       Text{text:"Shoush";anchors{top:shoush.top ; right:shoush.left ; topMargin:6 ; rightMargin:10}}
       Text{text:"Jonoub Terminal";anchors{top:jonoub.top ; right:jonoub.left ; topMargin:7 ; rightMargin:10}}
       Text{text:"Shahr-e Rey";anchors{top:rey.top ; right:rey.left ; topMargin:7 ; rightMargin:10}}


       Rectangle {
          id:get_time
           width: frame.implicitWidth -10
          height: frame.implicitHeight -10
          border.width: 5 ; border.color: "purple"
          anchors{right:parent.right ; rightMargin:50; top:parent.top ; topMargin:620}
          color: "pink"
          radius: 10
          function formatText(count, modelData) {
              var data = count === 12 ? modelData + 1 : modelData;
              return data.toString().length < 2 ? "0" + data : data;
          }


          Component {
              id: d_Component

              Text {
                  text: get_time.formatText(Tumbler.tumbler.count, modelData)
                  opacity: 1.0 - Math.abs(Tumbler.displacement) / (Tumbler.tumbler.visibleItemCount / 2)
                  horizontalAlignment: Text.AlignHCenter
                  verticalAlignment: Text.AlignVCenter
              }

          }

          Frame {
              id: frame
              padding: 0
             // anchors.centerIn: parent
             width: 170 ;height:190

              Row {

                  Tumbler {
                      id: hours
                      model: 12
                      delegate: d_Component
                      visibleItemCount: 5
                  }

                  Tumbler {
                      id: minutes
                      model: 60
                      delegate: d_Component
                      visibleItemCount: 5
                  }

                  Tumbler {
                      id: pm_am
                      model: ["AM", "PM"]
                      delegate: d_Component
                  }
              }
          }
      }


       Rectangle {
           id:b_dis
          anchors.right:parent.right ; anchors.bottom:parent.bottom ; anchors.rightMargin:50 ; anchors.bottomMargin:30
          width:170 ;height:50
          implicitWidth: 100
          implicitHeight: 40
          border.color: "#d147a3" ; color:"#ff3399"
          border.width: distance.pressed ? 8 : 6
          radius: 50
          Text {text:"<b>MIN_DISTANCE</b>" ;color:"lightblue" ; anchors.centerIn: parent ; font.pixelSize:15 }
          MouseArea
          {
            id:distance
            anchors.fill:parent
            onClicked:{

             if(origin==="null" || distination==="null"){message.visible=true}
             if(origin!=="null" && distination!=="null" && d_flag)
             {
                  parent.border.color="lightgreen"; b_cost.border.color="#d147a3" ; b_time.border.color="#d147a3";
                 parent.color="yellow"; b_cost.color="#ff3399" ; b_time.color="#ff3399";
                 if(!c_flag || !t_flag) { back.reset()}
                 s_time=(hours.currentItem.text)+":"+(minutes.currentItem.text)+" "+(pm_am.currentItem.text);
                 back.get_nodeName(origin , distination , s_time , 0 , minimum_dis , minimum_cost , minimum_time);
                 c_flag=true ; t_flag=true ; d_flag=false ; anim_1.running=false ; anim_2.running=false

             }

            }
          }

      }

       Rectangle {
           id:b_cost
          anchors.right:parent.right ; anchors.bottom:parent.bottom ; anchors.rightMargin:50 ; anchors.bottomMargin:100
          width:170 ;height:50
          implicitWidth: 100
          implicitHeight: 40
          border.color: "#d147a3" ; color:"#ff3399"
          border.width: cost.pressed ? 8 : 6
          radius: 50
          Text {text:"<b>LOW_COST</b>" ;color:"lightblue" ; anchors.centerIn: parent ; font.pixelSize:15 }
          MouseArea
          {
            id:cost
            anchors.fill:parent
            onClicked:{

             if(origin==="null" || distination==="null"){message.visible=true}
             if(origin!=="null" && distination!=="null" && c_flag)
             {
                  parent.border.color="lightgreen" ; b_dis.border.color="#d147a3" ; b_time.border.color="#d147a3"
                  parent.color="yellow"; b_dis.color="#ff3399" ; b_time.color="#ff3399";
                 if(!d_flag || !t_flag) { back.reset()}
                 s_time=(hours.currentItem.text)+":"+(minutes.currentItem.text)+" "+(pm_am.currentItem.text);
                 back.get_nodeName(origin , distination , s_time , 1 , minimum_dis , minimum_cost , minimum_time);
                 d_flag=true ; t_flag=true ; c_flag=false ; anim_1.running=false ; anim_2.running=false

             }

            }
          }

      }

       Rectangle {
           id:b_time
          anchors.right:parent.right ; anchors.bottom:parent.bottom ; anchors.rightMargin:50 ; anchors.bottomMargin:170
          width:170 ;height:50
          implicitWidth: 100
          implicitHeight: 40
          border.color: "#d147a3" ; color:"#ff3399"
          border.width: time.pressed ? 8 : 6
          radius: 50
          Text {text:"<b>BEST_TIME</b>" ;color:"lightblue" ; anchors.centerIn: parent ; font.pixelSize:15 }
          MouseArea
          {
            id:time
            anchors.fill:parent
            onClicked:{

             if(origin==="null" || distination==="null"){message.visible=true}
             if(origin!=="null" && distination!=="null" && t_flag)
             {
                 parent.border.color="lightgreen" ; b_dis.border.color="#d147a3" ; b_cost.border.color="#d147a3"
                  parent.color="yellow"; b_cost.color="#ff3399" ; b_dis.color="#ff3399";
                 if(!c_flag || !d_flag) { back.reset()}
                 s_time=(hours.currentItem.text)+":"+(minutes.currentItem.text)+" "+(pm_am.currentItem.text);
                 back.get_nodeName(origin , distination , s_time , 2 , minimum_dis , minimum_cost , minimum_time);
                 d_flag=true ; c_flag=true ; t_flag=false ; anim_1.running=false ; anim_2.running=false

             }

            }
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







    MessageDialog
    {
       id:message
       title:"warning"
       icon:StandardIcon.Warning
       text:"Incorrect input"
     //  standardButtons: standardButtons.OK
       visible:false
    }

}

