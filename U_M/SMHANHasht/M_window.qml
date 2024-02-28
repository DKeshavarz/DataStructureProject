import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.VirtualKeyboard 2.4

Window {
    id: window
    width: 1980
    height: 1080
    visible: true
    title: qsTr("Hello World")
    Rectangle
    {

        anchors.fill:parent   // #C0C0C0  "#DADBDD"  "#EEEEEE"  "#87CEFA"  "#DFD3E3"
        color:"#DADBDD"
    }

    property string origin: "null" ;  property string  distination: "null" ; property var current
    property string  c_type;
    Text{id:n_origin ;}
    Text{id:n_distination ; x:100}
    function a(s , name , type)
    {
        if(origin==="null" && distination!==name)
        {
            origin=name ; n_origin.text=name ; s.color="pink" ;

        }
        else if(distination==="null" &&  origin!==name)
        {
            distination=name ; n_distination.text=name ;  s.color="pink" ; current=s
            c_type=type
        }
        else
        {
            if(origin===name)
            {
               origin="null"  ;  n_origin.text="" ;
               if(type==="l"){s.color="#dcdcdc";  s.border.color="#a9a9a9"}
               else{s.color="#00ff55"}
            }
            else if(distination===name)
            {
                distination="null"  ; n_distination.text="" ;
                if(type==="l"){s.color="#dcdcdc";  s.border.color="#a9a9a9"}
                else{s.color="#00ff55"}
            }
            else
            {
                distination=name ; n_distination.text=name ;  s.color="pink" ;
                if(c_type==="l"){current.color="#dcdcdc";  current.border.color="#a9a9a9"}
                else{current.color="#00ff55"}
                current=s;c_type=type;
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
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(tajrish , "Tajrish" ,"l")
            }
        }
    }
    Rectangle
    {

        id:a1; height: 40; width: 3 ; color:"red";
        anchors{right:tajrish.left;rightMargin:-25;top:parent.top;topMargin: 62}

    }
    Rectangle
    {
        id:gheytariyeh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:a1.bottom; right:a1.left; rightMargin:-17}
        MouseArea
        {
            anchors.fill:parent
            onClicked:
            {
               a(gheytariyeh , "Gheytariyeh","l")
            }
        }

    }
    Rectangle
    {
        id:a3;height: 40; width: 3 ;color:"red";
        anchors{right:gheytariyeh.left; rightMargin:-15;top:parent.top; topMargin: 132}
    }
    Rectangle
    {
        id:gholhak;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{ top:a3.bottom;right:a3.left;rightMargin:-17}
        MouseArea
        {
            anchors.fill:parent
            onClicked:
            {
               a(gholhak , "Gholhak","l")
            }
        }

    }
    Rectangle
    {
        id:a5 ;height: 40;width: 3 ;color:"red";
        anchors{right:gholhak.left;rightMargin:-15; top:gholhak.top; topMargin:30}
    }
    Rectangle
    {
        id:mirdamad;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:a5.bottom; right:a5.left; rightMargin:-17}
        MouseArea
        {
            anchors.fill:parent
            onClicked:
            {
               a(mirdamad , "Mirdamad","l")
            }
        }
    }
    Rectangle
    {
        id:a7; height: 40; width: 3 ;color:"red";
        anchors{right:mirdamad.left;rightMargin:-15;top:mirdamad.top;  topMargin:30}
    }
    Rectangle
    {
        id:ha;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{ top:a7.bottom;right:a7.left; rightMargin:-17}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(ha , "Shahid Haghani","l")
           }
       }
    }
    Rectangle
    {
        id:a9;
        height: 30;  width: 3 ; color:"red";anchors{right:ha.left; rightMargin:-15; top:ha.top;topMargin:30}
    }
    Rectangle
    {
        id:beheshti;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{ top:a9.bottom; right:a9.left;  rightMargin:-17}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(beheshti , "Shahid Beheshti","l")
            }
        }
    }
    Rectangle
    {
        id:a11;height: 25;width: 3 ;color:"red";
        anchors{right:beheshti.left; rightMargin:-15; top:beheshti.top;topMargin:30}
    }
    Rectangle
    {
        id:mofatteh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{ top:a11.bottom; right:a11.left; rightMargin:-17}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(mofatteh , "Shahid Mofatteh","l")
           }
       }
    }
    Rectangle
    {
        id:a13; height: 30 ; width: 3 ;  color:"red";
        anchors{right:mofatteh.left; rightMargin:-15;top:mofatteh.top; topMargin:30}
    }
    Rectangle
    {
        id:hafte_tir;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{ top:a13.bottom; right:a13.left; rightMargin:-17}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(hafte_tir , "Haftom-e Tir","l")
           }
       }
    }
    Rectangle
    {
        id:a15;height:30; width: 3 ; color:"red";
        anchors {right:hafte_tir.left;rightMargin:-15;top:hafte_tir.top;topMargin:30}
    }
    Rectangle
    {
        id:taleghani;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{ top:a15.bottom; right:a15.left; rightMargin:-17}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(taleghani , "Taleghani","l")
           }
       }
    }
    Rectangle
    {
        id:a17; height: 25 ; width: 3 ;color:"red";
        anchors{right:taleghani.left; rightMargin:-15; top:taleghani.top;topMargin:30}
    }
    Rectangle
    {
        id:dowlat ;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{top:a17.bottom;right:a17.left; rightMargin:-17}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(dowlat , "Darvazeh Dowlat","l")
           }
       }
    }
    Rectangle
    {
        id:a19;height: 50; width: 3 ;color:"red";anchors
        { right:dowlat.left;rightMargin:-15;top:dowlat.top; topMargin:30}
    }
    Rectangle
    {
        id:khordad;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{ top:a19.bottom;right:a19.left; rightMargin:-17}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(khordad , "Panzdah-e Khordad","l")
           }
       }
    }
    Rectangle
    {
        id:a21;height: 30;width:3 ; color:"red";
        anchors{right:khordad.left; rightMargin:-15;  top:khordad.top;topMargin:30}
    }
    Rectangle
    {
        id:shoush;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{ top:a21.bottom;  right:a21.left; rightMargin:-17}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(shoush , "Shoush","l")
            }
        }
    }
    Rectangle
    {
        id:a23; height: 50;  width: 3 ;  color:"red";
        anchors{ right:shoush.left;rightMargin:-15; top:shoush.top; topMargin:30}
    }
    Rectangle
    {
        id:jonoub;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{  top:a23.bottom;  right:a23.left; rightMargin:-17}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(jonoub, "Jonoub Terminal","l")
            }
        }
    }
    Rectangle
    {   id:a25; height: 30;width: 3 ; color:"red";
        anchors{ right:jonoub.left;rightMargin:-15;top:jonoub.top; topMargin:30}
    }
    Rectangle
    {
        id:rey;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{ top:a25.bottom; right:a25.left;rightMargin:-17}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(rey, "Shahr-e Rey","l")
            }
        }
    }
    Rectangle
    {
        id:a27; height: 48 ;width: 3 ; color:"red";
        anchors{right:rey.left; rightMargin:-15; top:rey.top; topMargin:30}
    }
    Rectangle
    {
        id:kahrizak;
        width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        Text{text:qsTr("<b>Line1</b>") ; color:"red";anchors.centerIn:parent}
        anchors{ top:a27.bottom;right:a27.left; rightMargin:-27}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(kahrizak, "Kahrizak","l")
            }
        }
    }
    Rectangle
    {
      id:b; height: 3 ;width: 50; color:"#333CFF"
      anchors{top:beheshti.top;left:beheshti.right;topMargin:14;}
    }
    Rectangle
    {
        id:sohrevardi;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:beheshti.top;left:b.right}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(sohrevardi, "Sohrevardi","l")
            }
        }
    }
    Rectangle
    {
      id:b2 ; height: 3 ;width:20 ; color:"#333CFF"
      anchors{top:b.top;left:sohrevardi.right;}
    }
    Rectangle
    {
      id:b3; height: 50 ;width:3 ; color:"#333CFF"
      anchors{bottom:b2.top;left:b2.right;bottomMargin:-2;leftMargin:-3}
    }
    Rectangle
    {
      id:b4 ; height: 3 ;width:40 ; color:"#333CFF"
      anchors{top:b3.top;left:b3.right;}
    }
    Rectangle
    {
        id:gh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{top:b4.top;left:b4.right;topMargin:-13}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(gh, "Shahid Ghodousi","l")
           }
       }
    }
    Rectangle
    {
      id:b6 ; height: 3 ;width:80 ; color:"#333CFF"
      anchors{top:b4.top;left:gh.right;}
    }
    Rectangle
    {
        id:z;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:gh.top;left:b6.right;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a( z  , "Shahid Zeynoddin","l")
            }
        }
    }
    Rectangle
    {
      id:b8 ; height: 3 ;width:80 ; color:"#333CFF"
      anchors{top:b6.top;left:z.right;}
    }
    Rectangle
    {
        id:aghdasiyeh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:z.top;left:b8.right;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a( aghdasiyeh , "Aghdasiyeh","l")
            }
        }
    }
    Rectangle
    {
      id:b10 ; height: 3 ;width:170 ; color:"#333CFF"
      anchors{top:b8.top;left:aghdasiyeh.right}
    }
    Rectangle
    {
        id:ghaem;
        width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        Text{text:qsTr("<b>Line3</b>") ; color:"blue";anchors.centerIn:parent}
        anchors{top:aghdasiyeh.top;left:b10.right;topMargin:-10}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a( ghaem, "Gha'em","l")
            }
        }
    }
    Rectangle
    {
      id:b12 ; height: 3 ;width:150 ; color:"#333CFF"
      anchors{top:b.top;right:beheshti.left;}
    }
    Rectangle
    {
        id:shirazi;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
         anchors{top:beheshti.top;right:b12.left}
         MouseArea{
             anchors.fill:parent
             onClicked:{
                a( shirazi, "Merza-ye Shirazi","l")
             }
         }
    }
    Rectangle
    {
      id:b14 ; height: 3 ;width:30 ; color:"#333CFF"
      anchors{top:b12.top;right:shirazi.left;}
    }
    Rectangle
    {
      id:b15 ; height:30 ;width: 3 ; color:"#3355FF"
      anchors{top:b14.bottom;right:b14.left;topMargin:-2;rightMargin:-3}
    }
    Rectangle
    {
        id:jahad;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:b15.bottom;right:b15.left;rightMargin:-17}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a( jahad , "Meydan-e Jahad","l")
            }
        }
    }
    Rectangle
    {
      id:b17 ; height:40 ;width:3 ; color:"#333CFF"
      anchors{top:jahad.bottom;right:jahad.left;rightMargin:-16;}
    }
    Rectangle
    {
        id:v;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:b17.bottom;right:b17.left;rightMargin:-17}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a( v , "Meydan-e Hazrat-e ValiAsr","l")
            }
        }
    }
    Rectangle
    {
      id:b19 ; height:30 ;width: 3  ; color:"#333CFF"
      anchors{top:v.top;right:v.left;rightMargin:-16;topMargin:30}
    }
    Rectangle
    {
        id:teatr;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
      anchors{top:b19.bottom;right:b19.left;rightMargin:-17}
      MouseArea{
          anchors.fill:parent
          onClicked:{
             a( teatr , "Teatr-e Shahr","l")
          }
      }
    }
    Rectangle
    {
      id:b21 ; height:65 ;width:3 ; color:"#333CFF"
      anchors{top:teatr.bottom;right:teatr.left;rightMargin:-16;}
    }
    Rectangle
    {
        id:moniriyeh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
      anchors{top:b21.bottom;right:b21.left;rightMargin:-17}
      MouseArea{
          anchors.fill:parent
          onClicked:{
             a( moniriyeh , "Moniriyeh","l")
          }
      }
    }
    Rectangle
    {
      id:b23 ; height:30 ;width:3 ; color:"#333CFF"
      anchors{top:moniriyeh.bottom;right:moniriyeh.left;rightMargin:-16;}
    }
    Rectangle
    {
        id:mahdiyeh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
      anchors{top:b23.bottom;right:b23.left;rightMargin:-17}
      MouseArea{
          anchors.fill:parent
          onClicked:{
             a( mahdiyeh , "Mahdiyeh","l")
          }
      }
    }
    Rectangle
    {
      id:b25 ; height:30 ;width:3 ; color:"#333CFF"
      anchors{top:mahdiyeh.bottom;right:mahdiyeh.left;rightMargin:-16;}
    }
    Rectangle
    {
        id:rahahan;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
      anchors{top:b25.bottom;right:b25.left;rightMargin:-17}
      MouseArea{
          anchors.fill:parent
          onClicked:{
             a( rahahan , "Rahahanh","l")
          }
      }
    }
    Rectangle
    {
      id:b27 ; height:30 ;width:3 ; color:"#333CFF"
      anchors{top:rahahan.bottom;right:rahahan.left;rightMargin:-16;}
    }
    Rectangle
    {
        id:javadiyeh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
      anchors{top:b27.bottom;right:b27.left;rightMargin:-17}
      MouseArea{
          anchors.fill:parent
          onClicked:{
             a( javadiyeh , "Javadiyeh","l")
          }
      }
    }
    Rectangle
    {
      id:b29 ; height:35 ;width:3 ; color:"#333CFF"
      anchors{top:javadiyeh.bottom;right:javadiyeh.left;rightMargin:-16;}
    }
    Rectangle
    {
        id:zamzam;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:b29.bottom;right:b29.left;rightMargin:-17}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a( zamzam , "Zamzam","l")
            }
        }
    }
    Rectangle
    {
      id:b31 ; height:43  ;width: 3  ; color:"#333CFF"
      anchors{top:zamzam.bottom;right:zamzam.left;rightMargin:-16;}
    }
    Rectangle
    {
        id:azadegan;
        width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        Text{text:qsTr("<b>Line3</b>") ; color:"blue";anchors.centerIn:parent}
          anchors{top:b31.bottom;right:b31.left;rightMargin:-27}
          MouseArea{
              anchors.fill:parent
              onClicked:{
                 a( azadegan , "Azadegan","l")
              }
          }
    }
    Rectangle
    {
      id:c; height:3  ;width:200 ; color:"#ff1493"
      anchors{top:hafte_tir.bottom;left:hafte_tir.right;topMargin:-17}
    }
    Rectangle
    {
      id:c1; height:20 ;width: 3  ; color:"#ff1493"
      anchors{top:c.bottom;left:c.right;topMargin:-2;leftMargin:-3}
    }
    Rectangle
    {
        id:e;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:c1.bottom;right:c1.left;rightMargin:-17}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(e, "Emam Hossein","l")
            }
        }
    }
    Rectangle
    {
      id:c3; height:100 ;width:3 ; color:"#ff1493"
      anchors{top:e.bottom;right:e.left;rightMargin:-17}
    }
    Rectangle
    {
        id:sh;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:c3.bottom;right:c3.left;rightMargin:-17}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(sh , "Meydan-e Shohada","l")
            }
        }
    }
    Rectangle
    {
      id:c5; height:100 ;width:3 ; color:"#ff1493"
      anchors{top:sh.bottom;right:sh.left;rightMargin:-17}
    }
    Rectangle
    {
        id:r;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:c5.bottom;right:c5.left;rightMargin:-17}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(r , "Shahid Rezaei","l")
            }
        }
    }
    Rectangle
    {
      id:c7; height:176 ;width: 3 ; color:"#ff1493"
      anchors{top:r.bottom;right:r.left;rightMargin:-17}
    }
    Rectangle
    {
      id:c8; height: 3  ;width:365 ; color:"#ff1493"
      anchors{top:c7.bottom;left:c7.right;leftMargin:-3}
    }
    Rectangle
    {
        id:h;
        width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        Text{text:qsTr("<b>Line6</b>") ; color:"#ff1493";anchors.centerIn:parent}
        anchors{top:c8.top;left:c8.right;topMargin:-25}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(h , "Haram-e Hazrat-e Abdolazim","l")
            }
        }
    }
    Rectangle
    {
      id:c10; height:3 ; width:192 ; color:"#ff1493"
      anchors{top:c.top;right:hafte_tir.left;}
    }
    Rectangle
    {
      id:c11; height: 3 ; width:160 ; color:"#ff1493"
      anchors{top:c10.top;right:v.left;}
    }
    Rectangle
    {
        id:boostan;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:v.top;right:c11.left;}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(boostan , "Boostan-e laleh","l")
            }
        }
    }
    Rectangle
    {
      id:c13; height:170 ; width: 3 ; color:"#ff1493"
      anchors{bottom:boostan.top;right:boostan.left;rightMargin:-15}
    }
    Rectangle
    {
      id:c14; height:3 ; width:100 ; color:"#ff1493"
      anchors{top:c13.top;right:boostan.left;rightMargin:-15}
    }
    Rectangle
    {
        id:yadegar;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
         anchors{top:c14.top;right:c14.left;topMargin:-15;}
         MouseArea{
             anchors.fill:parent
             onClicked:{
                a(yadegar , "Yadegar-e Emam","l")
             }
         }
    }
    Rectangle
    {
      id:c16; height:3 ; width:100 ; color:"#ff1493"
      anchors{top:yadegar.top;right:yadegar.left;topMargin:15;}
    }
    Rectangle
    {
        id:kashani;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{top:yadegar.top;right:c16.left;}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(kashani , "Kashani","l")
           }
       }
    }
    Rectangle
    {
      id:c18; height:3 ; width:130 ; color:"#ff1493"
      anchors{top:kashani.top;right:kashani.left;topMargin:15;}
    }
    Rectangle
    {
        id:kouhsar;
        width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        Text{text:qsTr("<b>Line6</b>") ; color: "#ff1493";anchors.centerIn:parent}
        anchors{top:kashani.top;right:c18.left;topMargin:-10}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(kouhsar , "Kouhsar","l")
            }
        }
    }
    Rectangle
    {
      id:d ; height:230 ; width:3 ; color:"yellow"
      anchors{bottom:kashani.top;right:c16.left;rightMargin:13}
    }
    Rectangle
    {
        id:chaharbagh;
        width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        Text{text:qsTr("<b>Line4</b>") ; color: "yellow" ;anchors.centerIn:parent}
        anchors{bottom:d.top;right:d.left;rightMargin:-27}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(chaharbagh , "Chaharbagh","l")
            }
        }
    }
    Rectangle
    {
      id:d2 ; height:50 ; width:3 ; color:"yellow"
      anchors{top:kashani.bottom;right:c16.left;rightMargin:15}
    }
    Rectangle
    {
        id:jafari;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
         anchors{top:d2.bottom;right:d2.left;rightMargin:-17}
         MouseArea{
             anchors.fill:parent
             onClicked:{
                a(jafari , "Allameh Jafari","l")
             }
         }
    }
    Rectangle
    {
      id:d4 ; height:50 ; width: 3 ; color:"yellow"
      anchors{top:jafari.bottom;right:jafari.left;rightMargin:-15}
    }
    Rectangle
    {
        id:sabz;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:d4.bottom;right:d4.left;rightMargin:-17}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(sabz , "Eram-e Sabz","l")
            }
        }
    }
    Rectangle
    {
      id:d6 ; height:55 ; width:3 ; color:"yellow"
      anchors{top:sabz.bottom;right:sabz.left;rightMargin:-15}
    }
    Rectangle
    {
        id:azadi;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:d6.bottom;right:d6.left;rightMargin:-17}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(azadi , "Meydan-e Azadi","l")
            }
        }
    }
    Rectangle
    {
      id:d8 ; height:3 ; width:30 ; color:"yellow"
      anchors{top:azadi.top;left:azadi.right;topMargin: 15;}
    }
    Rectangle
    {
        id:moein;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:azadi.top;left:d8.right}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(moein , "Ostad Mo'in","l")
            }
        }
    }
    Rectangle
    {
      id:d10 ; height:3 ; width:40 ; color:"yellow"
      anchors{top:d8.top;left:moein.right;}
    }
    Rectangle
    {
        id:shadman;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:moein.top;left:d10.right}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(shadman , "Shademan","l")
            }
        }
    }
    Rectangle
    {
      id:d12 ; height:3 ; width:40 ; color:"yellow"
      anchors{top:d10.top;left:shadman.right;}
    }
    Rectangle
    {
        id:tohid;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{top:shadman.top;left:d12.right}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(tohid , "Towhid","l")
           }
       }
    }
    Rectangle
    {
      id:d14 ; height:3 ; width:82 ; color:"yellow"
      anchors{top:d12.top;left:tohid.right;}
    }
    Rectangle
    {
        id:meydan;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:tohid.top;left:d14.right}
        anchors{top:shadman.top;left:d12.right}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(meydan , "Meydan-e Enghelab-e Eslami","l")
            }
        }
    }
    Rectangle
    {
      id:d16 ; height:3 ; width:96 ; color:"yellow"
      anchors{top:d14.top;left:meydan.right;}
    }
    Rectangle{id:d17 ; height:3 ; width:50 ; color:"yellow";anchors{top:d16.top;left:teatr.right;}}
    Rectangle
    {
        id:ferdowsi;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:teatr.top;left:d17.right}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(ferdowsi , "Ferdowsi","l")
            }
        }
    }
    Rectangle{id:d19 ; height:3 ; width:30 ; color:"yellow";anchors{top:d16.top;left:ferdowsi.right;}}
    Rectangle{id:d20 ; height:55 ; width:3 ; color:"yellow";anchors{top:d19.bottom;left:d19.right;topMargin:-3;}}
    Rectangle{id:d21 ; height:3 ; width:79 ; color:"yellow";anchors{top:d20.bottom;left:d20.right;leftMargin: -3;}}
    Rectangle{id:d22 ; height:3 ; width:90 ; color:"yellow";anchors{top:d21.top;left:dowlat.right;}}
    Rectangle
    {
        id:shemiran;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{top:dowlat.top;left:d22.right}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(shemiran , "Darvazeh Shemiran","l")
           }
       }
    }
    Rectangle{id:d24 ; height:3 ; width:30 ; color:"yellow";anchors{top:d22.top;left:shemiran.right;}}
    Rectangle{id:d25 ; height:48 ; width:3 ; color:"yellow";anchors{top:d24.bottom;left:d24.right;leftMargin: -3}}
    Rectangle{id:d26 ; height:3 ; width:40 ; color:"yellow";anchors{top:d25.bottom;left:d25.right;topMargin:-3;leftMargin: -3}}
    Rectangle{id:d27 ; height:3 ; width:60 ; color:"yellow";anchors{top:d26.top;left:sh.right;}}
    Rectangle
    {
        id:eb;
        width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:sh.top;left:d27.right}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(eb , "Ebn-e Sina","l")
            }
        }
    }
     Rectangle{id:d29 ; height:3 ; width:30 ; color:"yellow";anchors{top:d27.top;left:eb .right}}
     Rectangle
     {
         id:pirouzi;
         width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
        anchors{top:eb .top;left:d29.right}
        MouseArea{
            anchors.fill:parent
            onClicked:{
               a(pirouzi , "Pirouzi","l")
            }
        }
     }
     Rectangle{id:d31 ; height:3 ; width:30 ; color:"yellow";anchors{top:d29.top;left:pirouzi.right;}}
     Rectangle
     {
         id:nabard
         width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
       anchors{top:pirouzi.top;left:d31.right}
       MouseArea{
           anchors.fill:parent
           onClicked:{
              a(nabard , "Nabard","l")
           }
       }
     }
      Rectangle{id:d33 ; height:3 ; width:30 ; color:"yellow";anchors{top:d31.top;left:nabard.right}}
      Rectangle
      {
          id:nirou
          width: 30 ;  height : 30 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
          anchors{top:nabard.top;left:d33.right}
          MouseArea{
              anchors.fill:parent
              onClicked:{
                 a(nirou , "Nirou Havaei","l")
              }
          }
      }
       Rectangle{id:d35 ; height:3 ; width:70 ; color:"yellow";anchors{top:d33.top;left:nirou.right}}
       Rectangle
       {
           id:k;
           width: 50 ;  height : 50 ; radius:180 ; color:"#dcdcdc" ; border.width:3 ; border.color:"#a9a9a9"
           Text{text:qsTr("<b>Line4</b>") ; color:"yellow";anchors.centerIn:parent}
          anchors{top:nirou.top;left:d35.right;topMargin:-10}
          MouseArea{
              anchors.fill:parent
              onClicked:{
                 a(k , "Shahid Kolahdouz","l")
              }
          }
       }
       Rectangle
       {
           id:ghaem_pirouzi_1
           width:2 ; height:105; color:"#667C26";
           anchors{top:ghaem.bottom;left:ghaem.left;leftMargin:26}

       }
       Rectangle
       {
           id:ghaem_pirouzi_2
           width:2 ; height:105; color:"#667C26";
           anchors{top:ghaem.bottom;left:ghaem.left;leftMargin:21}

       }
       Rectangle
       {
           id:ghaem_pirouzi_3
           width:242 ; height:2 ; color:"#667C26";
           anchors{top:ghaem_pirouzi_1.bottom;right:ghaem_pirouzi_1.left;topMargin:-6}

       }
       Rectangle
       {
           id:ghaem_pirouzi_4
           width:242 ; height:2 ; color:"#667C26";
           anchors{top:ghaem_pirouzi_1.bottom;right:ghaem_pirouzi_1.left;topMargin:-1}

       }
       Rectangle
       {
           id:ghaem_pirouzi_5
           width:2 ; height:185 ; color:"#667C26";
           anchors{top:ghaem_pirouzi_3.bottom;right:ghaem_pirouzi_3.left;rightMargin:-7}

       }
       Rectangle
       {
           id:ghaem_pirouzi_6
           width:2 ; height:185 ; color:"#667C26";
           anchors{top:ghaem_pirouzi_3.bottom;right:ghaem_pirouzi_3.left;rightMargin:-2}

       }
       Rectangle
       {
           id:pirouzi_R_1
           width:2 ; height:118; color:"#667C26";
           anchors{top:pirouzi.bottom;right:pirouzi.left;rightMargin:-13}

       }
       Rectangle
       {
           id:pirouzi_R_2
           width:2 ; height:118; color:"#667C26";
           anchors{top:pirouzi.bottom;right:pirouzi.left;rightMargin:-18}

       }
       Rectangle
       {
           id:pirouzi_R_3
           width:136 ; height:2 ; color:"#667C26";
           anchors{top:pirouzi_R_2.bottom;right:pirouzi_R_2.left;topMargin:-7}

       }
       Rectangle
       {
           id:pirouzi_R_4
           width:136 ; height:2 ; color:"#667C26";
           anchors{top:pirouzi_R_2.bottom;right:pirouzi_R_2.left;topMargin:-2}

       }
       Rectangle
       {
           id:r_javanmard_1
           width:100 ; height:2 ; color:"#667C26";
           anchors{top:pirouzi_R_3.top;right:r.left;}

       }
       Rectangle
       {
           id:r_javanmard_2
           width:100 ; height:2 ; color:"#667C26";
           anchors{top:pirouzi_R_4.top;right:r.left;}

       }
       Rectangle
       {
           id:r_javanmard_3
           width:2 ; height:165 ; color:"#667C26";
           anchors{top:r_javanmard_2.bottom;right:r_javanmard_1.left;topMargin:-5;rightMargin:-7}

       }
       Rectangle
       {
           id:r_javanmard_4
           width:2 ; height:165 ; color:"#667C26";
           anchors{top:r_javanmard_2.bottom;right:r_javanmard_1.left;topMargin:-5;rightMargin:-2}

       }
       Rectangle
       {
           id:javanmard;
           width: 50 ;  height : 50 ; radius:180 ; color:"#00ff55"
           Text{text:qsTr("BUS2") ;anchors.centerIn:parent}
            anchors{top:r_javanmard_3.bottom;right:r_javanmard_3.left;rightMargin:-25}
            MouseArea{
                anchors.fill:parent
                onClicked:{
                   a(javanmard , "Payaneh Javanmard","b")
                }
            }
       }
       Rectangle
       {
           id:ghaem_ansary_1
           width:2 ; height:30 ; color:"#667C26";
           anchors{bottom:ghaem.top;right:ghaem.left;rightMargin:-22}

       }
       Rectangle
       {
           id:ghaem_ansary_2
           width:2 ; height:30 ; color:"#667C26";
           anchors{bottom:ghaem.top;right:ghaem.left;rightMargin:-27}

       }
       Rectangle
       {
           id:ghaem_ansary_3
           width:380 ; height:2  ; color:"#667C26";
           anchors{top:ghaem_ansary_2.top;right:ghaem_ansary_2.left;}

       }
       Rectangle
       {
           id:ghaem_ansary_4
           width:380 ; height:2 ; color:"#667C26";
           anchors{top:ghaem_ansary_2.top;right:ghaem_ansary_2.left;topMargin:5}

       }
       Rectangle
       {
           id:ansary;
           width: 50 ;  height : 50 ; radius:180 ; color:"#00ff55"
           Text{text:qsTr("BUS2") ;anchors.centerIn:parent}
           anchors{top:ghaem_ansary_3.bottom ;right:ghaem_ansary_3.left;topMargin:-23;}
           MouseArea{
               anchors.fill:parent
               onClicked:{
                  a(ansary, "Khajeh Abdollah-e Ansari","b")
               }
           }
       }
       Rectangle
       {
           id:ebnesina_tehranpars_1
           width:2 ; height:73 ; color:"#1B8A6B";
           anchors{top:d27.bottom;right:eb.left;topMargin:13;rightMargin:-18}

       }
       Rectangle
       {
           id:ebnesina_tehranpars_2
           width:2 ; height:73  ; color:"#1B8A6B";
          anchors{top:d27.bottom;right:eb.left;topMargin:13;rightMargin:-13}

       }
       Rectangle
       {
           id:ebnesina_tehranpars_3
           width:300 ; height:2  ; color:"#1B8A6B";
           anchors{top:ebnesina_tehranpars_2.bottom;left:ebnesina_tehranpars_2.right;topMargin:-7}

       }
       Rectangle
       {
           id:ebnesina_tehranpars_4
           width:300 ; height:2 ; color:"#1B8A6B";
           anchors{top:ebnesina_tehranpars_2.bottom;left:ebnesina_tehranpars_2.right;topMargin:-2}

       }
       Rectangle
       {
           id:tehranpars;
           width: 50 ;  height : 50 ; radius:180 ; color:"#00ff55"
           Text{text:qsTr("BUS2") ;anchors.centerIn:parent}
           anchors{top:ebnesina_tehranpars_3.top ;left:ghaem_ansary_3.right;topMargin:-23;leftMargin:-30}
           MouseArea{
               anchors.fill:parent
               onClicked:{
                  a(tehranpars, "Tehran Par","b")
               }
           }
       }
       Rectangle
       {
           id:emam_ebnesina_1
           width:2 ; height:118  ; color:"#1B8A6B";
          anchors{bottom:eb.bottom;right:eb.left;rightMargin:-13;bottomMargin:30}

       }
       Rectangle
       {
           id:emam_ebnesina_2
           width:2 ; height:118  ; color:"#1B8A6B";
           anchors{bottom:eb.bottom;right:eb.left;rightMargin:-18;bottomMargin:30}

       }
       Rectangle
       {
           id:emam_ebnesina_3
           width:77 ; height:2  ; color:"#1B8A6B";
           anchors{top:emam_ebnesina_2.top;right:emam_ebnesina_2.left;}

       }
       Rectangle
       {
           id:emam_ebnesina_4
           width:77 ; height:2 ; color:"#1B8A6B";
           anchors{top:emam_ebnesina_2.top;right:emam_ebnesina_2.left;topMargin: 5}

       }
       Rectangle
       {
           id:dowlat_emam_1
           width:145 ; height:2  ; color:"#1B8A6B";
           anchors{top:emam_ebnesina_3.top;right:e.left;}

       }
       Rectangle
       {
           id:dowlat_emam_2
           width:145 ; height:2 ; color:"#1B8A6B";
           anchors{top:emam_ebnesina_4.top;right:e.left;}

       }
       Rectangle
       {
           id:dowlat_emam_3
           width:2 ; height:85  ; color:"#1B8A6B";
           anchors{top:dowlat_emam_1.top;right:dowlat_emam_2.left;}

       }
       Rectangle
       {
           id:dowlat_emam_4
           width:2 ; height:85 ; color:"#1B8A6B";
           anchors{top:dowlat_emam_1.top;right:dowlat_emam_2.left;rightMargin:-5}

       }
       Rectangle
       {
           id:dowlat_emam_5
           width:47 ; height:2  ; color:"#1B8A6B";
           anchors{top:dowlat_emam_3.bottom;right:dowlat_emam_3.left;rightMargin:-7}

       }
       Rectangle
       {
           id:dowlat_emam_6
           width:47 ; height:2 ; color:"#1B8A6B";
           anchors{top:dowlat_emam_3.bottom;right:dowlat_emam_3.left;topMargin:-5;rightMargin:-7}

       }
       Rectangle
       {
           id:ferdowsi_dowlat_1
           width:2 ; height:25  ; color:"#1B8A6B";
           anchors{top:dowlat.bottom;right:dowlat.left;rightMargin:-13}

       }
       Rectangle
       {
           id:ferdowsi_dowlat_2
           width:2 ; height:25 ; color:"#1B8A6B";
           anchors{top:dowlat.bottom;right:dowlat.left;rightMargin:-18}

       }
       Rectangle
       {
           id:ferdowsi_dowlat_3
           width:144 ; height:2  ; color:"#1B8A6B";
           anchors{top:ferdowsi_dowlat_2.bottom;right:ferdowsi_dowlat_2.left;topMargin:-2}

       }
       Rectangle
       {
           id:ferdowsi_dowlat_4
           width:144 ; height:2 ; color:"#1B8A6B";
           anchors{top:ferdowsi_dowlat_2.bottom;right:ferdowsi_dowlat_2.left;topMargin:-7;}

       }
       Rectangle
       {
           id:ferdowsi_dowlat_5
           width:2 ; height:65  ; color:"#1B8A6B";
           anchors{bottom:ferdowsi_dowlat_3.top;right:ferdowsi_dowlat_3.left;rightMargin:-2}

       }
       Rectangle
       {
           id:ferdowsi_dowlat_6
           width:2 ; height:65 ; color:"#1B8A6B";
           anchors{bottom:ferdowsi_dowlat_3.top;right:ferdowsi_dowlat_3.left;rightMargin:-7}

       }
       Rectangle
       {
           id:enghelab_ferdowsi_1
           width:210 ; height:2  ; color:"#1B8A6B";
           anchors{top:ferdowsi_dowlat_5.top;right:ferdowsi_dowlat_5.left;rightMargin:-5}

       }
       Rectangle
       {
           id:enghelab_ferdowsi_2
           width:210 ; height:2 ; color:"#1B8A6B";
           anchors{top:ferdowsi_dowlat_5.top;right:ferdowsi_dowlat_5.left;topMargin:5;rightMargin:-5}

       }
       Rectangle
       {
           id:lines_1
           width:2 ; height:18  ; color:"#1B8A6B";
           anchors{top:ferdowsi.bottom;right:ferdowsi.left;rightMargin:-13}

       }
       Rectangle
       {
           id:lines_2
           width:2 ; height:18 ; color:"#1B8A6B";
           anchors{top:ferdowsi.bottom;right:ferdowsi.left;rightMargin:-18}

       }
       Rectangle
       {
           id:lines_3
           width:2 ; height:18  ; color:"#1B8A6B";
           anchors{top:meydan.bottom;right:meydan.left;rightMargin:-13}

       }
       Rectangle
       {
           id:lines_4
           width:2 ; height:18 ; color:"#1B8A6B";
           anchors{top:meydan.bottom;right:meydan.left;rightMargin:-18}

       }
       Rectangle
       {
           id:lines_5
           width:2 ; height:18  ; color:"#1B8A6B";
           anchors{top:moein.bottom;right:moein.left;rightMargin:-13}

       }
       Rectangle
       {
           id:lines_6
           width:2; height:18 ; color:"#1B8A6B";
           anchors{top:moein.bottom;right:moein.left;rightMargin:-18}

       }
       Rectangle
       {
           id:lines_7
           width:2 ; height:18  ; color:"#1B8A6B";
           anchors{top:azadi.bottom;right:azadi.left;rightMargin:-13}

       }
       Rectangle
       {
           id:lines_8
           width:2 ; height:18 ; color:"#1B8A6B";
           anchors{top:azadi.bottom;right:azadi.left;rightMargin:-18}

       }
       Rectangle
       {
           id:moein_enghelab_1
           width:257 ; height:2  ; color:"#1B8A6B";
           anchors{top:enghelab_ferdowsi_1.top;right:enghelab_ferdowsi_1.left;rightMargin:-5}

       }
       Rectangle
       {
           id:moein_enghelab_2
           width:257 ; height:2 ; color:"#1B8A6B";
           anchors{top:enghelab_ferdowsi_2.top;right:enghelab_ferdowsi_2.left;rightMargin:-5}

       }
       Rectangle
       {
           id:azadi_moein_1
           width:65 ; height:2  ; color:"#1B8A6B";
           anchors{top:moein_enghelab_1.top;right:moein_enghelab_1.left;rightMargin:-5}

       }
       Rectangle
       {
           id:azadi_moein_2
           width:65 ; height:2 ; color:"#1B8A6B";
           anchors{top:moein_enghelab_2.top;right:moein_enghelab_2.left;rightMargin:-5}

       }
       Rectangle
       {
           id:bimeh_azadi_1
           width:127 ; height:2  ; color:"#1B8A6B";
           anchors{top:azadi.top;right:azadi.left;topMargin:11}

       }
       Rectangle
       {
           id:bimeh_azadi_2
           width:127 ; height:2 ; color:"#1B8A6B";
           anchors{top:azadi.top;right:azadi.left;topMargin:16}
       }
       Rectangle
       {
           id:bimeh;
           width: 50 ;  height : 50 ; radius:180 ; color:"#00ff55"
           Text{text:qsTr("BUS1") ;anchors.centerIn:parent}
           anchors{top:bimeh_azadi_1.top ;right:bimeh_azadi_1.left;topMargin:-22;leftMargin:-40}
           MouseArea{
               anchors.fill:parent
               onClicked:{
                  a(bimeh, "Bimeh","b")
               }
           }
       }
       Rectangle
       {
           id:sadr_tajrish_1
           width:140 ; height:2  ; color:"#2C3539";
           anchors{top:tajrish.top;right:tajrish.left;topMargin:22}

       }
       Rectangle
       {
           id:sadr_tajrish_2
           width:140 ; height:2 ; color:"#2C3539";
           anchors{top:tajrish.top;right:tajrish.left;topMargin:27}
       }
       Rectangle
       {
           id:sadr_tajrish_3
           width:2 ; height:80  ; color:"#2C3539";
           anchors{top:sadr_tajrish_1.bottom;right:sadr_tajrish_1.left;rightMargin:-2}

       }
       Rectangle
       {
           id:sadr_tajrish_4
           width:2 ; height:80 ; color:"#2C3539";
           anchors{top:sadr_tajrish_1.bottom;right:sadr_tajrish_1.left;rightMargin:-7}

       }
       Rectangle
       {
           id:sadr;
           width: 50 ;  height : 50 ; radius:180 ; color:"#00ff55"
           Text{text:qsTr("BUS1") ;anchors.centerIn:parent}
           anchors{top:sadr_tajrish_3.bottom ;right:sadr_tajrish_3.left;rightMargin:-27}
           MouseArea{
               anchors.fill:parent
               onClicked:{
                  a(sadr, "Shahid Sadr","b")
               }
           }
       }
       Rectangle
       {
           id:tajrish_mirdamad_1
           width:30 ; height:2  ; color:"#2C3539";
           anchors{top:sadr_tajrish_1.top;left:sadr_tajrish_1.right;leftMargin:50}

       }
       Rectangle
       {
           id:tajrish_mirdamad_2
           width:30 ; height:2 ; color:"#2C3539";
            anchors{top:sadr_tajrish_2.top;left:sadr_tajrish_2.right;leftMargin:50}

       }
       Rectangle
       {
           id:tajrish_mirdamad_3
           width:2 ; height:222  ; color:"#2C3539";
           anchors{top:tajrish_mirdamad_1.bottom;right:tajrish_mirdamad_1.left;rightMargin:-25}

       }
       Rectangle
       {
           id:tajrish_mirdamad_4
           width:2 ; height:222 ; color:"#2C3539";
           anchors{top:tajrish_mirdamad_1.bottom;right:tajrish_mirdamad_1.left;rightMargin:-30}

       }
       Rectangle
       {
           id:tajrish_mirdamad_5
           width:41 ; height:2  ; color:"#2C3539";
           anchors{top:tajrish_mirdamad_3.bottom;right:tajrish_mirdamad_3.left;topMargin:-2;rightMargin:-5}

       }
       Rectangle
       {
           id:tajrish_mirdamad_6
           width:41 ; height:2 ; color:"#2C3539";
           anchors{top:tajrish_mirdamad_3.bottom;right:tajrish_mirdamad_3.left;topMargin:-7;rightMargin:-5}
       }
       Rectangle
       {
           id:mirdamad_v_1
           width:325 ; height:2 ; color:"#2C3539";
           anchors{top:tajrish_mirdamad_5.top;right:tajrish_mirdamad_5.left;rightMargin:30}

       }
       Rectangle
       {
           id:mirdamad_v_2
           width:325 ; height:2 ; color:"#2C3539";
           anchors{top:tajrish_mirdamad_6.top;right:tajrish_mirdamad_6.left;rightMargin:30}
       }
       Rectangle
       {
           id:mirdamad_v_3
           width:2 ; height:251  ; color:"#2C3539";
           anchors{top:mirdamad_v_1.bottom;right:mirdamad_v_1.left;topMargin:-5;rightMargin:-2}

       }
       Rectangle
       {
           id:mirdamad_v_4
          width:2 ; height:251  ; color:"#2C3539";
           anchors{top:mirdamad_v_1.bottom;right:mirdamad_v_1.left;topMargin:-5;rightMargin:-7}
       }
       Rectangle
       {
           id:mirdamad_v_5
           width:98 ; height:2  ; color:"#2C3539";
           anchors{top:mirdamad_v_3.bottom;left:mirdamad_v_3.right;topMargin:-2}

       }
       Rectangle
       {
           id:mirdamad_v_6
           width:98 ; height:2 ; color:"#2C3539";
           anchors{top:mirdamad_v_3.bottom;left:mirdamad_v_3.right;topMargin:-7}
       }
       Rectangle
       {
           id:v_rahahan_1
           width:30 ; height:2  ; color:"#2C3539";
           anchors{top:mirdamad_v_5.top;left:v.right}

       }
       Rectangle
       {
           id:v_rahahan_2
           width:30 ; height:2 ; color:"#2C3539";
           anchors{top:mirdamad_v_6.top;left:v.right}
       }
       Rectangle
       {
           id:v_rahahan_3
           width:2 ; height:281  ; color:"#2C3539";
           anchors{top:v_rahahan_1.bottom;left:v_rahahan_1.right;topMargin:-5;leftMargin:-7}

       }
       Rectangle
       {
           id:v_rahahan_4
          width:2 ; height:281  ; color:"#2C3539";
           anchors{top:v_rahahan_1.bottom;left:v_rahahan_1.right;topMargin:-5;leftMargin:-2}
       }
       Rectangle
       {
           id:v_rahahan_5
           width:28 ; height:2  ; color:"#2C3539";
           anchors{top:v_rahahan_3.bottom;right:v_rahahan_3.left;topMargin:-2;rightMargin:-5}

       }
       Rectangle
       {
           id:v_rahahan_6
           width:28 ; height:2 ; color:"#2C3539";
           anchors{top:v_rahahan_3.bottom;right:v_rahahan_3.left;topMargin:-7;rightMargin:-5}
       }
       Rectangle
       {
           id:rahahan_shahrak_1
           width:130 ; height:2  ; color:"#2C3539";
           anchors{top:v_rahahan_5.top;right:rahahan.left;}

       }
       Rectangle
       {
           id:rahahan_shahrak_2
           width:130 ; height:2 ; color:"#2C3539";
           anchors{top:v_rahahan_6.top;right:rahahan.left;}
       }
       Rectangle
       {
           id:rahahan_shahrak_3
           width:2 ; height:182  ; color:"#2C3539";
           anchors{top:rahahan_shahrak_1.bottom;right:rahahan_shahrak_2.left;topMargin:-5;rightMargin:-2}

       }
       Rectangle
       {
           id:rahahan_shahrak_4
          width:2; height:182  ; color:"#2C3539";
           anchors{top:rahahan_shahrak_1.bottom;right:rahahan_shahrak_2.left;topMargin:-5;rightMargin:-7}
       }
       Rectangle
       {
           id:shahrak;
           width: 50 ;  height : 50 ; radius:180 ; color:"#00ff55"
           Text{text:qsTr("BUS1") ;anchors.centerIn:parent}
            anchors{top:rahahan_shahrak_3.bottom ;right:rahahan_shahrak_3.left;rightMargin:-27}
            MouseArea{
                anchors.fill:parent
                onClicked:{
                   a(shahrak, "Shahrak-e Shari'ati","b")
                }
            }
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
       Text{text:"Meydan-e Hazrat-e ValiAsr";anchors{top:v.top ; left:v.right ; topMargin:-10 ; leftMargin:30 }}
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
       Text{text:"Haftom-e Tir";anchors{top:hafte_tir.top ; left:hafte_tir.right ; topMargin:-10 ; leftMargin:30}}
       Text{text:"Taleghani";anchors{top:taleghani.top ; right:taleghani.left ; topMargin:-10}}
       Text{text:"Darvazeh Dowlat";anchors{top:dowlat.top ; left:dowlat.right ; topMargin:30 }}
       Text{text:"Panzdah-e Khordad";anchors{top:khordad.top ; right:khordad.left ; topMargin:7 ; rightMargin:10}}
       Text{text:"Shoush";anchors{top:shoush.top ; right:shoush.left ; topMargin:6 ; rightMargin:10}}
       Text{text:"Jonoub Terminal";anchors{top:jonoub.top ; right:jonoub.left ; topMargin:7 ; rightMargin:10}}
       Text{text:"Shahr-e Rey";anchors{top:rey.top ; right:rey.left ; topMargin:7 ; rightMargin:10}}


}

