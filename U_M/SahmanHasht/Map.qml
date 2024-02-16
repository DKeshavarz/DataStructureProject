import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQml 2.3
Item
{
  anchors.fill:parent
  property int size: 2
  Rectangle
  {
   anchors.fill:parent
   color:"#CECECE"
   Station
   {
     id:a;  s_width: 50 ;  s_height: 50; s_text: "Line1" ; s_color_text: "red"
     anchors{horizontalCenter: parent.horizontalCenter;top:parent.top;topMargin: 13}
   }
   Rectangle
   {
       id:a1; height: 30; width: size; color:"red";
       anchors{right:a.left;rightMargin:-25;top:parent.top;topMargin: 60}
   }
   Station
   {
       id:a2;anchors{top:a1.bottom; right:a1.left; rightMargin:13}
   }
   Rectangle
   {
       id:a3;height: 30; width: size ;color:"red";
       anchors{right:a2.left; rightMargin:-15;top:parent.top; topMargin: 120}
   }
   Station
   {
       id:a4;anchors{ top:a3.bottom;right:a3.left;rightMargin:13}
   }
   Rectangle
   {
       id:a5 ;height: 30;width: size ;color:"red";
       anchors{right:a4.left;rightMargin:-15; top:a4.top; topMargin:30}
   }
   Station
   {
       id:a6;anchors{top:a5.bottom; right:a5.left; rightMargin:13}
   }
   Rectangle
   {
       id:a7; height: 30; width: size ;color:"red";
       anchors{right:a6.left;rightMargin:-15;top:a6.top;  topMargin:30}
   }
   Station
   {
       id:a8;anchors{ top:a7.bottom;right:a7.left; rightMargin:13}
   }
   Rectangle
   {
       id:a9;
       height: 40;  width: size ; color:"red";anchors{right:a8.left; rightMargin:-15; top:a8.top;topMargin:30}
   }
   Station
   {
       id:a10;
       anchors{ top:a9.bottom; right:a9.left;  rightMargin:13}
   }
   Rectangle
   {
       id:a11;height: 25;width: size;color:"red";
       anchors{right:a10.left; rightMargin:-15; top:a10.top;topMargin:30}
   }
   Station
   {
       id:a12;anchors{ top:a11.bottom; right:a11.left; rightMargin:13}
   }
   Rectangle
   {
       id:a13; height: 25; width: size;  color:"red";
       anchors{right:a12.left; rightMargin:-15;top:a12.top; topMargin:30}
   }
   Station{
       id:a14;anchors{ top:a13.bottom; right:a13.left; rightMargin:13}
   }
   Rectangle{id:a15;height: 30; width: size; color:"red";anchors {right:a14.left;  rightMargin:-15;  top:a14.top;   topMargin:30}}
   Station
   {
       id:a16;anchors{ top:a15.bottom; right:a15.left; rightMargin:13}
   }
   Rectangle
   {
       id:a17; height: 30; width: size;color:"red";
       anchors{right:a16.left; rightMargin:-15; top:a16.top;topMargin:30}
   }
   Station
   {
       id:a18;anchors{top:a17.bottom;right:a17.left; rightMargin:13}
   }
   Rectangle
   {
       id:a19;height: 50; width: size;color:"red";anchors
       { right:a18.left;rightMargin:-15;top:a18.top; topMargin:30}
   }
   Station
   {
       id:a20;anchors{ top:a19.bottom;right:a19.left; rightMargin:13}
   }
   Rectangle
   {
       id:a21;height: 30;width: 2; color:"red";
       anchors{right:a20.left; rightMargin:-15;  top:a20.top;topMargin:30}
   }
   Station
   {
       id:a22;
       anchors{ top:a21.bottom;  right:a21.left; rightMargin:13}
   }
   Rectangle
   {
       id:a23; height: 50;  width: size;  color:"red";
       anchors{ right:a22.left;rightMargin:-15; top:a22.top; topMargin:30}
   }
   Station
   {
       id:a24;anchors{  top:a23.bottom;  right:a23.left; rightMargin:13}
   }
   Rectangle
   {   id:a25; height: 30;width: size; color:"red";
       anchors{ right:a24.left;rightMargin:-15;top:a24.top; topMargin:30}
   }
   Station
   {
       id:a26;anchors{ top:a25.bottom; right:a25.left;rightMargin:13}
   }
   Rectangle
   {
       id:a27; height: 50;width: size; color:"red";
       anchors{right:a26.left; rightMargin:-15; top:a26.top; topMargin:30}
   }
   Station{
       id:a28;s_width: 50;s_height: 50;  s_text: "Line1";  s_color_text: "red"
       anchors{ top:a27.bottom;right:a27.left; rightMargin:23}
   }
   Rectangle
   {
     id:b; height: size ;width: 50; color:"#333CFF"
     anchors{top:a10.top;left:a10.right;topMargin:14;leftMargin:30}
   }
   Station
   {
       id:b1;
       anchors{top:a10.top;left:b.right}
   }
   Rectangle
   {
     id:b2; height: 2 ;width:20 ; color:"#333CFF"
     anchors{top:b.top;left:b1.right;leftMargin:30}
   }
   Rectangle
   {
     id:b3; height: 50 ;width:size ; color:"#333CFF"
     anchors{bottom:b2.top;left:b2.right;bottomMargin:-2}
   }
   Rectangle
   {
     id:b4 ; height: size ;width:40 ; color:"#333CFF"
     anchors{top:b3.top;left:b3.right;}
   }
   Station
   {
       id:b5;
       anchors{top:b4.top;left:b4.right;topMargin:-13}
   }
   Rectangle
   {
     id:b6 ; height: size ;width:80 ; color:"#333CFF"
     anchors{top:b4.top;left:b5.right;leftMargin:30}
   }
   Station
   {
       id:b7;
       anchors{top:b5.top;left:b6.right;}
   }
   Rectangle
   {
     id:b8 ; height: size ;width:80 ; color:"#333CFF"
     anchors{top:b6.top;left:b7.right;leftMargin:30}
   }
   Station
   {
       id:b9;
       anchors{top:b7.top;left:b8.right;}
   }
   Rectangle
   {
     id:b10 ; height: size ;width:170 ; color:"#333CFF"
     anchors{top:b8.top;left:b9.right;leftMargin:30}
   }
   Station
   {
       id:b11; s_width: 50 ;s_height: 50 ; s_text:"Line3" ; s_color_text: "#333CFF"
       anchors{top:b9.top;left:b10.right;topMargin:-10}
   }
   Rectangle
   {
     id:b12 ; height: size ;width:150 ; color:"#333CFF"
     anchors{top:b.top;right:a10.left;}
   }
   Station
   {
       id:b13;
       anchors{top:a10.top;right:b12.left}
   }
   Rectangle
   {
     id:b14 ; height: size ;width:30 ; color:"#333CFF"
     anchors{top:b12.top;right:b13.left;}
   }
   Rectangle
   {
     id:b15 ; height:30 ;width:size ; color:"#3355FF"
     anchors{top:b14.bottom;right:b14.left;topMargin:-2}
   }
   Station
   {
       id:b16;
       anchors{top:b15.bottom;right:b15.left;rightMargin:14}
   }
   Rectangle
   {
     id:b17 ; height:40 ;width:size ; color:"#333CFF"
     anchors{top:b16.bottom;right:b16.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:b18;
       anchors{top:a14.bottom;right:b17.left;rightMargin:14}
   }
   Rectangle
   {
     id:b19 ; height:30 ;width:size ; color:"#333CFF"
     anchors{top:b18.top;right:b18.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:b20;
       anchors{top:b19.bottom;right:b19.left;rightMargin:14}
   }
   Rectangle
   {
     id:b21 ; height:65 ;width:size ; color:"#333CFF"
     anchors{top:b20.bottom;right:b20.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:b22;
       anchors{top:b21.bottom;right:b21.left;rightMargin:14}
   }
   Rectangle
   {
     id:b23 ; height:30 ;width:size ; color:"#333CFF"
     anchors{top:b22.bottom;right:b22.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:b24;
       anchors{top:b23.bottom;right:b23.left;rightMargin:14}
   }
   Rectangle
   {
     id:b25 ; height:30 ;width:size ; color:"#333CFF"
     anchors{top:b24.bottom;right:b24.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:b26;
       anchors{top:b25.bottom;right:b25.left;rightMargin:14}
   }
   Rectangle
   {
     id:b27 ; height:30 ;width:size ; color:"#333CFF"
     anchors{top:b26.bottom;right:b26.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:b28;
       anchors{top:b27.bottom;right:b27.left;rightMargin:14}
   }
   Rectangle
   {
     id:b29 ; height:35 ;width:size ; color:"#333CFF"
     anchors{top:b28.bottom;right:b28.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:b30;
       anchors{top:b29.bottom;right:b29.left;rightMargin:14}
   }
   Rectangle
   {
     id:b31 ; height:50 ;width:size ; color:"#333CFF"
     anchors{top:b30.bottom;right:b30.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:b32;s_width: 50 ; s_height: 50 ; s_text: "Line3" ; s_color_text: "#333CFF"
       anchors{top:b31.bottom;right:b31.left;rightMargin:22}
   }
   Rectangle
   {
     id:c; height:2 ;width:200 ; color:"#ff1493"
     anchors{top:a14.bottom;left:a14.right;topMargin:14;leftMargin:30}
   }
   Rectangle
   {
     id:c1; height:20 ;width:size ; color:"#ff1493"
     anchors{top:c.bottom;left:c.right;topMargin:-2}
   }
   Station
   {
       id:c2;
       anchors{top:c1.bottom;right:c1.left;rightMargin:13}
   }
   Rectangle
   {
     id:c3; height:100 ;width:size ; color:"#ff1493"
     anchors{top:c2.bottom;right:c2.left;topMargin:30;rightMargin:-15}
   }
   Station
   {
       id:c4;
       anchors{top:c3.bottom;right:c3.left;rightMargin:13}
   }
   Rectangle
   {
     id:c5; height:100 ;width:size ; color:"#ff1493"
     anchors{top:c4.bottom;right:c4.left;topMargin:30;rightMargin:-15}
   }
   Station
   {
       id:c6;
       anchors{top:c5.bottom;right:c5.left;rightMargin:13}
   }
   Rectangle
   {
     id:c7; height:185 ;width:size ; color:"#ff1493"
     anchors{top:c6.bottom;right:c6.left;topMargin:30;rightMargin:-15}
   }
   Rectangle
   {
     id:c8; height:size ;width:365 ; color:"#ff1493"
     anchors{top:c7.bottom;left:c7.right;leftMargin:-2}
   }
   Station
   {
       id:c9;s_width: 50 ; s_height: 50 ; s_text: "Line6" ; s_color_text: "#ff1493"
       anchors{top:c8.top;left:c8.right;topMargin:-25}
   }
   Rectangle
   {
     id:c10; height:size ; width:167 ; color:"#ff1493"
     anchors{top:c.top;right:a14.left;}
   }
   Rectangle
   {
     id:c11; height:size ; width:160 ; color:"#ff1493"
     anchors{top:c10.top;right:c10.left;rightMargin:28}
   }
   Station
   {
       id:c12;
       anchors{top:b18.top;right:c11.left;}
   }
   Rectangle
   {
     id:c13; height:170 ; width:size ; color:"#ff1493"
     anchors{bottom:c12.top;right:c12.left;rightMargin:-15}
   }
   Rectangle
   {
     id:c14; height:size ; width:100 ; color:"#ff1493"
     anchors{top:c13.top;right:c12.left;rightMargin:-15}
   }
   Station
   {
       id:c15;
       anchors{top:c14.top;right:c14.left;topMargin:-15;rightMargin:30;}
   }
   Rectangle
   {
     id:c16; height:size ; width:130 ; color:"#ff1493"
     anchors{top:c15.top;right:c15.left;topMargin:15;}
   }
   Station
   {
       id:c17;
       anchors{top:c15.top;right:c16.left;}
   }
   Rectangle
   {
     id:c18; height:size ; width:200 ; color:"#ff1493"
     anchors{top:c17.top;right:c17.left;topMargin:15;}
   }
   Station
   {
       id:c19;s_width: 50 ; s_height: 50 ; s_text: "Line6" ; s_color_text: "#ff1493"
       anchors{top:c17.top;right:c18.left;topMargin:-10}
   }
   Rectangle
   {
     id:d ; height:233 ; width:size ; color:"yellow"
     anchors{bottom:c17.top;right:c16.left;rightMargin:-15}
   }
   Station
   {
       id:d1 ;s_width: 50 ; s_height: 50 ; s_text: "Line4" ; s_color_text: "yellow"
       anchors{bottom:d.top;right:d.left;bottomMargin:20;rightMargin:23}
   }
   Rectangle
   {
     id:d2 ; height:50 ; width:size ; color:"yellow"
     anchors{top:c17.bottom;right:c16.left;topMargin:30;rightMargin:-15}
   }
   Station
   {
       id:d3
       anchors{top:d2.bottom;right:d2.left;rightMargin:14}
   }
   Rectangle
   {
     id:d4 ; height:50 ; width:size ; color:"yellow"
     anchors{top:d3.bottom;right:d3.left;topMargin:30;rightMargin:-15}
   }
   Station
   {
       id:d5
       anchors{top:d4.bottom;right:d4.left;rightMargin:14}
   }
   Rectangle
   {
     id:d6 ; height:55 ; width:size ; color:"yellow"
     anchors{top:d5.bottom;right:d5.left;topMargin:30;rightMargin:-15}
   }
   Station
   {
       id:d7
       anchors{top:d6.bottom;right:d6.left;rightMargin:14}
   }
   Rectangle
   {
     id:d8 ; height:size ; width:30 ; color:"yellow"
     anchors{top:d7.top;left:d7.right;topMargin: 15;leftMargin:30}
   }
   Station
   {
       id:d9
       anchors{top:d7.top;left:d8.right}
   }
   Rectangle
   {
     id:d10 ; height:size ; width:30 ; color:"yellow"
     anchors{top:d8.top;left:d9.right;leftMargin: 30}
   }
   Station
   {
       id:d11
       anchors{top:d9.top;left:d10.right}
   }
   Rectangle
   {
     id:d12 ; height:size ; width:30 ; color:"yellow"
     anchors{top:d10.top;left:d11.right;leftMargin: 30}
   }
   Station
   {
       id:d13
       anchors{top:d11.top;left:d12.right}
   }
   Rectangle
   {
     id:d14 ; height:size ; width:82 ; color:"yellow"
     anchors{top:d12.top;left:d13.right;leftMargin: 30}
   }
   Station
   {
       id:d15
       anchors{top:d13.top;left:d14.right}
   }
   Rectangle
   {
     id:d16 ; height:size ; width:85 ; color:"yellow"
     anchors{top:d14.top;left:d15.right;leftMargin: 30}
   }
   Rectangle{id:d17 ; height:size ; width:50 ; color:"yellow";anchors{top:d16.top;left:b20.right;leftMargin: 30}}
   Station{
       id:d18
       anchors{top:b20.top;left:d17.right}
   }
   Rectangle{id:d19 ; height:size ; width:30 ; color:"yellow";anchors{top:d16.top;left:d18.right;leftMargin: 30}}
   Rectangle{id:d20 ; height:60 ; width:size ; color:"yellow";anchors{top:d19.bottom;left:d19.right;topMargin:-2}}
   Rectangle{id:d21 ; height:size ; width:55 ; color:"yellow";anchors{top:d20.bottom;left:d20.right;leftMargin: -2}}
   Rectangle{id:d22 ; height:size ; width:65 ; color:"yellow";anchors{top:d21.top;left:a18.right;leftMargin: 30}}
   Station{
       id:d23;anchors{top:a18.top;left:d22.right}
   }
   Rectangle{id:d24 ; height:size ; width:30 ; color:"yellow";anchors{top:d22.top;left:d23.right;leftMargin: 30}}
   Rectangle{id:d25 ; height:43 ; width:size ; color:"yellow";anchors{top:d24.bottom;left:d24.right;leftMargin: -2}}
   Rectangle{id:d26 ; height:size ; width:64 ; color:"yellow";anchors{top:d25.bottom;left:d25.right;leftMargin: -2}}
   Rectangle{id:d27 ; height:size ; width:60 ; color:"yellow";anchors{top:d26.top;left:c4.right;leftMargin: 30}}
   Station{
       id:d28;anchors{top:c4.top;left:d27.right}
   }
   Rectangle{id:d29 ; height:size ; width:30 ; color:"yellow";anchors{top:d27.top;left:d28.right;leftMargin: 30}}
   Station{
       id:d30;anchors{top:d28.top;left:d29.right}
   }
   Rectangle{id:d31 ; height:size ; width:30 ; color:"yellow";anchors{top:d29.top;left:d30.right;leftMargin: 30}}
   Station{
       id:d32;anchors{top:d30.top;left:d31.right}
   }
   Rectangle{id:d33 ; height:size ; width:30 ; color:"yellow";anchors{top:d31.top;left:d32.right;leftMargin: 30}}
   Station{
       id:d34;anchors{top:d32.top;left:d33.right}
   }
   Rectangle{id:d35 ; height:size ; width:60 ; color:"yellow";anchors{top:d33.top;left:d34.right;leftMargin: 30}}
   Station{
       id:d36;s_width: 50 ; s_height: 50 ; s_text: "Line3" ; s_color_text: "yellow"
       anchors{top:d34.top;left:d35.right;topMargin:-10}
   }
   Label{id:e;text:"----------------" ; color:"green";rotation: 270;anchors{top:d28.bottom;left:d27.right;topMargin:60;leftMargin:-25}}
   Label{id:e1;text:"----------------" ; color:"green";rotation:270;anchors{top:d28.bottom;left:d27.right;topMargin:60;leftMargin:-30}}
   Label{id:e2;text:"----------------------------------------------------" ; color:"green";
         anchors{top:e1.bottom;left:e1.right;topMargin:16;leftMargin:-40}}
   Label{id:e3;text:"----------------------------------------------------" ; color:"green";
         anchors{top:e1.bottom;left:e1.right;topMargin:21;leftMargin:-40}}
   Station{
       id:e4;s_width: 50 ; s_height: 50 ; s_text: "BUS1" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:e2.top;left:e2.right;topMargin:-15}
   }
   Label{id:e5;text:"------------------------" ;color:"#008000";rotation: 270;
        anchors{bottom:d28.top;left:d27.right;bottomMargin:50;leftMargin:-45}}
   Label{id:e6;text:"------------------------" ;color:"#008000";rotation:270;
         anchors{bottom:d28.top;left:d27.right;bottomMargin:50;leftMargin:-50}}
   Label{id:e7;text:"---------------" ; color:"green";anchors{top:e5.top;left:c2.right;topMargin:-55;leftMargin:30}}
   Label{id:e8;text:"---------------" ; color:"green";anchors{top:e5.top;left:c2.right;topMargin:-60;leftMargin:30}}
   Label{id:e9;text:"-----------------------------" ; color:"green";anchors{top:e7.top;right:c2.left;}}
   Label{id:e10;text:"-----------------------------" ; color:"green";anchors{top:e8.top;right:c2.left;}}
   Label{id:e11;text:"------------------" ;color:"green";rotation: 270;
        anchors{top:e10.bottom;right:e10.left;rightMargin:-45;topMargin:30}}
   Label{id:e12;text:"------------------" ;color:"green";rotation:270;
         anchors{top:e10.bottom;right:e10.left;rightMargin:-50;topMargin:30}}
   Label{id:e13;text:"----------" ; color:"green";anchors{top:e12.bottom;right:d23.left;topMargin:25;rightMargin:15}}
   Label{id:e14;text:"----------" ; color:"green";anchors{top:e12.bottom;right:d23.left;topMargin:30;rightMargin:15}}
   Label{id:e15;text:"-------" ;color:"green";rotation: 270;
        anchors{top:a18.bottom;right:a20.left;topMargin:38;rightMargin:-28}}
   Label{id:e16;text:"-------" ;color:"green";rotation:270;
         anchors{top:a18.bottom;right:a20.left;topMargin:38;rightMargin:-33}}
   Label{id:e17;text:"-------------------------";color:"green";anchors{top:e16.bottom;right:e15.left;topMargin:-5;rightMargin:-25}}
   Label{id:e18;text:"-------------------------";color:"green";anchors{top:e16.bottom;right:e15.left;topMargin:-1;rightMargin:-25}}
   Label{id:e19;text:"----------------" ;color:"green";rotation: 270;
        anchors{top:d19.bottom;right:d19.left;topMargin:58;rightMargin:-20}}
   Label{id:e20;text:"----------------" ;color:"green";rotation:270;
         anchors{top:d19.bottom;right:d19.left;topMargin:58;rightMargin:-25}}
   Label{id:e21;text:"----------------------------------------";color:"green";
        anchors{top:e20.top;right:e20.left;topMargin:-34;rightMargin:-40}}
   Label{id:e22;text:"----------------------------------------";color:"green";
        anchors{top:e20.top;right:e20.left;topMargin:-39;rightMargin:-40}}
   Label{id:e23;text:"---" ;color:"green";rotation: 270; anchors{bottom:e22.top;left:e22.right;bottomMargin:-8;leftMargin:-8}}
   Label{id:e24;text:"---" ;color:"green";rotation:270; anchors{bottom:e22.top;left:e22.right;bottomMargin:-8;leftMargin:-13}}
   Label{id:e25;text:"---" ;color:"green";rotation: 270;anchors{bottom:e22.top;right:e22.left;bottomMargin:-8;rightMargin:-8}}
   Label{id:e26;text:"---" ;color:"green";rotation:270; anchors{bottom:e22.top;right:e22.left;bottomMargin:-8;rightMargin:-13}}
   Label{id:e27;text:"----------------------------------------------";color:"green";anchors{top:e21.top;right:e21.left;}}
   Label{id:e28;text:"----------------------------------------------";color:"green";anchors{top:e22.top;right:e22.left;}}
   Label{id:e29;text:"----" ;color:"green";rotation: 270;anchors{bottom:e27.top;right:e27.left;bottomMargin:-6;rightMargin:-8}}
   Label{id:e30;text:"----" ;color:"green";rotation:270;anchors{bottom:e27.top;right:e27.left;bottomMargin:-6;rightMargin:-13}}
   Label{id:e31;text:"------------";color:"green";anchors{top:e27.top;right:e27.left;}}
   Label{id:e32;text:"------------";color:"green";anchors{top:e28.top;right:e28.left;}}
   Label{id:e33;text:"----" ;color:"green";rotation: 270;anchors{bottom:e31.top;right:e31.left;bottomMargin:-6;rightMargin:-8}}
   Label{id:e34;text:"----" ;color:"green";rotation:270;anchors{bottom:e31.top;right:e31.left;bottomMargin:-6;rightMargin:-13}}
   Label{id:e35;text:"-------------------------------";color:"green";anchors{top:d7.top;right:e31.left;topMargin:5;rightMargin:10}}
   Label{id:e36;text:"-------------------------------";color:"green";anchors{top:d7.top;right:e31.left;topMargin:10;rightMargin:10}}
   Station{
       id:e37;s_width: 50 ; s_height: 50 ; s_text: "BUS1" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:e36.top;right:e36.left;topMargin:-21;rightMargin:40}
   }
   Label{id:f;text:"-----" ;color:"purple";rotation: 270; anchors{bottom:b11.top;left:b11.right;bottomMargin:2;leftMargin:8}}
   Label{id:f1;text:"-----";color:"purple";rotation:270; anchors{bottom:b11.top;left:b11.right;bottomMargin:2;leftMargin:13}}
   Label{id:f2;text:"---------------------------------------------------------------------------" ;color:"purple";
        anchors{bottom:f1.top;right:f1.left;bottomMargin:-5;rightMargin:-15}}
   Label{id:f3;text:"---------------------------------------------------------------------------" ;color:"purple";
        anchors{bottom:f1.top;right:f1.left;bottomMargin:-10;rightMargin:-15}}
   Station{
       id:f4;s_width: 50 ; s_height: 50 ; s_text: "BUS2" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:f3.top;right:f3.left;topMargin:-18;rightMargin:40}}
    Label{id:f5;text:"-----------------------" ;color:"purple";rotation: 270;
         anchors{top:b11.bottom;right:b11.left;topMargin:98;rightMargin:-77}}
    Label{id:f6;text:"-----------------------";color:"purple";rotation:270;
        anchors{top:b11.bottom;right:b11.left;topMargin:98;rightMargin:-82}}
    Label{id:f7;text:"------------------------------------------------" ;color:"purple";
         anchors{top:f5.bottom;right:f5.left;topMargin:33;rightMargin:-65}}
    Label{id:f8;text:"------------------------------------------------" ;color:"purple";
         anchors{top:f5.bottom;right:f5.left;topMargin:38;rightMargin:-65}}
    Label{id:f9;text:"-----------------------------------" ;color:"purple";rotation: 270;
         anchors{top:f8.bottom;right:f8.left;topMargin:68;rightMargin:-86}}
    Label{id:f10;text:"-----------------------------------" ;color:"purple";rotation:270;
          anchors{top:f8.bottom;right:f8.left;topMargin:68;rightMargin:-91}}
    Label{id:f11;text:"------------------------" ;color:"purple";rotation: 270;
         anchors{top:d30.bottom;right:d30.left;topMargin:80;rightMargin:-72}}
    Label{id:f12;text:"------------------------" ;color:"purple";rotation:270;
          anchors{top:d30.bottom;right:d30.left;topMargin:80;rightMargin:-77}}
    Label{id:f13;text:"----------------------------" ;color:"purple";
         anchors{top:f12.bottom;right:f12.left;topMargin:38;rightMargin:-61}}
    Label{id:f14;text:"----------------------------" ;color:"purple";
         anchors{top:f12.bottom;right:f12.left;topMargin:43;rightMargin:-61}}
    Label{id:f15;text:"-------------------" ;color:"purple";
         anchors{top:f13.top;right:c5.left;rightMargin:12}}
    Label{id:f16;text:"-------------------" ;color:"purple";
         anchors{top:f14.top;right:c5.left;rightMargin:12}}
    Label{id:f17;text:"-----------------------------------" ;color:"purple";rotation: 270;
         anchors{top:f16.bottom;right:f16.left;topMargin:65;rightMargin:-88}}
    Label{id:f18;text:"-----------------------------------" ;color:"purple";rotation:270;
          anchors{top:f16.bottom;right:f16.left;topMargin:65;rightMargin:-93}}
    Station{
        id:f19;s_width: 50 ; s_height: 50 ; s_text: "BUS2" ; s_color: "#00ff55" ; s_boarder_width: 0
        anchors{top:f18.bottom ;right:f18.left; topMargin:78; rightMargin:-61}}
    Label{id:g;text:"------------------------------" ;color:"purple";
         anchors{top:a.top;right:a.left;topMargin:11}}
    Label{id:g1;text:"------------------------------" ;color:"purple";
         anchors{top:a.top;right:a.left;topMargin:16}}
    Label{id:g2;text:"------------------" ;color:"purple";rotation: 270;
         anchors{top:g.bottom;right:g.left;topMargin:28;rightMargin:-45}}
    Label{id:g3;text:"------------------" ;color:"purple";rotation:270;
          anchors{top:g.bottom;right:g.left;topMargin:28;rightMargin:-50}}
    Station{
        id:g4;s_width: 50 ; s_height: 50 ; s_text: "BUS3" ; s_color: "#00ff55" ; s_boarder_width: 0
        anchors{top:g3.bottom ;right:g3.left;topMargin:23;rightMargin:-20}}
    Label{id:g5;text:"-----" ;color:"purple";
         anchors{top:g.top;left:a.right;leftMargin:50}}
    Label{id:g6;text:"-----" ;color:"purple";
         anchors{top:g1.top;left:a.right;leftMargin:50}}
    Label{id:g7;text:"---------------------------------------" ;color:"purple";rotation: 270;
         anchors{top:g5.bottom;right:g5.left;topMargin:81;rightMargin:-117}}
    Label{id:g8;text:"---------------------------------------" ;color:"purple";rotation:270;
          anchors{top:g5.bottom;right:g5.left;topMargin:81;rightMargin:-122}}
    Label{id:g9;text:"-------" ;color:"purple";
         anchors{top:g8.bottom;left:a7.right;topMargin:76;leftMargin:15}}
    Label{id:g10;text:"-------" ;color:"purple";
         anchors{top:g8.bottom;left:a7.right;topMargin:81;leftMargin:15}}
    Label{id:g11;text:"-------------------------------------------------------------" ;color:"purple";
         anchors{top:g9.top;right:a7.left;rightMargin:10}}
    Label{id:g12;text:"-------------------------------------------------------------" ;color:"purple";
         anchors{top:g10.top;right:a7.left;rightMargin:10}}
    Label{id:g13;text:"-------------------------------------------------" ;color:"purple";rotation: 270;
         anchors{top:g10.bottom;right:b16.left;topMargin:100;rightMargin:-15}}
    Label{id:g14;text:"-------------------------------------------------" ;color:"purple";rotation:270;
          anchors{top:g10.bottom;right:b16.left;topMargin:100;rightMargin:-20}}
    Label{id:g15;text:"---------------------" ;color:"purple";
         anchors{top:g14.bottom;right:b18.left;topMargin:103;}}
    Label{id:g16;text:"---------------------" ;color:"purple";
         anchors{top:g14.bottom;right:b18.left;topMargin:108;}}
    Label{id:g17;text:"------" ;color:"purple";
         anchors{top:g15.top;left:b18.right;leftMargin:30}}
    Label{id:g18;text:"------" ;color:"purple";
         anchors{top:g16.top;left:b18.right;leftMargin:30}}
    Label{id:g19;text:"---------------------------------------------------------" ;color:"purple";rotation: 270;
         anchors{top:b19.top;left:b18.right;topMargin:114;leftMargin:-83}}
    Label{id:g20;text:"---------------------------------------------------------" ;color:"purple";rotation:270;
          anchors{top:b19.top;left:b18.right;topMargin:114;leftMargin:-88}}
    Label{id:g21;text:"------" ;color:"purple";
         anchors{top:b26.top;left:b27.right;topMargin:5;leftMargin:13}}
    Label{id:g22;text:"------" ;color:"purple";
         anchors{top:b26.top;left:b27.right;topMargin:10;leftMargin:13}}
    Label{id:g23;text:"------------------------" ;color:"purple";
         anchors{top:g21.top;right:b27.left;rightMargin:13}}
    Label{id:g24;text:"------------------------" ;color:"purple";
         anchors{top:g22.top;right:b27.left;rightMargin:13}}
    Label{id:g25;text:"---------------------------------------" ;color:"purple";rotation: 270;
         anchors{top:b27.top;right:b27.left;topMargin:71;rightMargin:30}}
    Label{id:g26;text:"---------------------------------------" ;color:"purple";rotation:270;
          anchors{top:b27.top;right:b27.left;topMargin:71;rightMargin:35}}

    Station{
        id:g27;s_width: 50 ; s_height: 50 ; s_text: "BUS3" ; s_color: "#00ff55" ; s_boarder_width: 0
        anchors{top:g25.bottom ;right:g25.left;topMargin:85;rightMargin:-70}}

  }
}
