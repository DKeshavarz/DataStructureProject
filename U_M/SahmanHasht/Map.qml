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

  }
}
