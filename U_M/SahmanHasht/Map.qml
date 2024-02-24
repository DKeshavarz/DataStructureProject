import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQml 2.3
Item
{
  anchors.fill:parent
  property int size: 3 ; property int size_b: 2
  Rectangle
  {
   anchors.fill:parent
   color:"#CECECE"
   Station
   {
     id:tajrish;  s_width: 50 ;  s_height: 50; s_text: "<b>Line1</b>" ; s_color_text: "red"
     anchors{horizontalCenter: parent.horizontalCenter;top:parent.top;topMargin: 13}
   }
   Rectangle
   {
       id:a1; height: 40; width: size; color:"red";
       anchors{right:tajrish.left;rightMargin:-25;top:parent.top;topMargin: 62}
   }
   Station
   {
       id:a2;anchors{top:a1.bottom; right:a1.left; rightMargin:13}
   }
   Rectangle
   {
       id:a3;height: 40; width: size ;color:"red";
       anchors{right:a2.left; rightMargin:-15;top:parent.top; topMargin: 130}
   }
   Station
   {
       id:a4;anchors{ top:a3.bottom;right:a3.left;rightMargin:13}
   }
   Rectangle
   {
       id:a5 ;height: 40;width: size ;color:"red";
       anchors{right:a4.left;rightMargin:-15; top:a4.top; topMargin:30}
   }
   Station
   {
       id:a6;anchors{top:a5.bottom; right:a5.left; rightMargin:13}
   }
   Rectangle
   {
       id:a7; height: 40; width: size ;color:"red";
       anchors{right:a6.left;rightMargin:-15;top:a6.top;  topMargin:30}
   }
   Station
   {
       id:a8;anchors{ top:a7.bottom;right:a7.left; rightMargin:13}
   }
   Rectangle
   {
       id:a9;
       height: 30;  width: size ; color:"red";anchors{right:a8.left; rightMargin:-15; top:a8.top;topMargin:30}
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
       id:a21;height: 30;width:size ; color:"red";
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
       id:kahrizak ;s_width: 50;s_height: 50;  s_text: "<b>Line1</b>";  s_color_text: "red"
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
     id:b2; height: size ;width:20 ; color:"#333CFF"
     anchors{top:b.top;left:b1.right;leftMargin:30}
   }
   Rectangle
   {
     id:b3; height: 50 ;width:size ; color:"#333CFF"
     anchors{bottom:b2.top;left:b2.right;bottomMargin:-2;leftMargin:-3}
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
       id:b11; s_width: 50 ;s_height: 50 ; s_text:"<b>Line3</b>" ; s_color_text: "#333CFF"
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
     anchors{top:b14.bottom;right:b14.left;topMargin:-2;rightMargin:-3}
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
       id:azadegan ;s_width: 50 ; s_height: 50 ; s_text: "<b>Line3</b>" ; s_color_text: "#333CFF"
       anchors{top:b31.bottom;right:b31.left;rightMargin:22}
   }
   Rectangle
   {
     id:c; height:size ;width:200 ; color:"#ff1493"
     anchors{top:a14.bottom;left:a14.right;topMargin:14;leftMargin:30}
   }
   Rectangle
   {
     id:c1; height:20 ;width:size ; color:"#ff1493"
     anchors{top:c.bottom;left:c.right;topMargin:-2;leftMargin:-3}
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
     anchors{top:c7.bottom;left:c7.right;leftMargin:-3}
   }
   Station
   {
       id:h ;s_width: 50 ; s_height: 50 ; s_text: "<b>Line6</b>" ; s_color_text: "#ff1493"
       anchors{top:c8.top;left:c8.right;topMargin:-25}
   }
   Rectangle
   {
     id:c10; height:size ; width:163 ; color:"#ff1493"
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
       id:c19;s_width: 50 ; s_height: 50 ; s_text: "<b>Line6</b>" ; s_color_text: "#ff1493"
       anchors{top:c17.top;right:c18.left;topMargin:-10}
   }
   Rectangle
   {
     id:d ; height:233 ; width:size ; color:"yellow"
     anchors{bottom:c17.top;right:c16.left;rightMargin:-15}
   }
   Station
   {
       id:d1 ;s_width: 50 ; s_height: 50 ; s_text: "<b>Line4</b>" ; s_color_text: "yellow"
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
     id:d16 ; height:size ; width:86 ; color:"yellow"
     anchors{top:d14.top;left:d15.right;leftMargin: 30}
   }
   Rectangle{id:d17 ; height:size ; width:50 ; color:"yellow";anchors{top:d16.top;left:b20.right;leftMargin: 30}}
   Station{
       id:d18
       anchors{top:b20.top;left:d17.right}
   }
   Rectangle{id:d19 ; height:size ; width:30 ; color:"yellow";anchors{top:d16.top;left:d18.right;leftMargin: 30}}
   Rectangle{id:d20 ; height:60 ; width:size ; color:"yellow";anchors{top:d19.bottom;left:d19.right;topMargin:-3;}}
   Rectangle{id:d21 ; height:size ; width:52 ; color:"yellow";anchors{top:d20.bottom;left:d20.right;leftMargin: -3}}
   Rectangle{id:d22 ; height:size ; width:65 ; color:"yellow";anchors{top:d21.top;left:a18.right;leftMargin: 30}}
   Station{
       id:d23;anchors{top:a18.top;left:d22.right}
   }
   Rectangle{id:d24 ; height:size ; width:30 ; color:"yellow";anchors{top:d22.top;left:d23.right;leftMargin: 30}}
   Rectangle{id:d25 ; height:43 ; width:size ; color:"yellow";anchors{top:d24.bottom;left:d24.right;leftMargin: -3}}
   Rectangle{id:d26 ; height:size ; width:63 ; color:"yellow";anchors{top:d25.bottom;left:d25.right;topMargin:-3;leftMargin: -3}}
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
       id:d36;s_width: 50 ; s_height: 50 ; s_text: "<b>Line4</b>" ; s_color_text: "yellow"
       anchors{top:d34.top;left:d35.right;topMargin:-10}
   }
   Rectangle
   {
       id:ghaem_pirouzi_1
       width:size_b ; height:105; color:"green";
       anchors{top:b11.bottom;left:b11.left;topMargin:50;leftMargin:26}

   }
   Rectangle
   {
       id:ghaem_pirouzi_2
       width:size_b ; height:105; color:"green";
       anchors{top:b11.bottom;left:b11.left;topMargin:50;leftMargin:21}

   }
   Rectangle
   {
       id:ghaem_pirouzi_3
       width:244 ; height:size_b ; color:"green";
       anchors{top:ghaem_pirouzi_1.bottom;right:ghaem_pirouzi_1.left;topMargin:-6}

   }
   Rectangle
   {
       id:ghaem_pirouzi_4
       width:244 ; height:size_b ; color:"green";
       anchors{top:ghaem_pirouzi_1.bottom;right:ghaem_pirouzi_1.left;topMargin:-1}

   }
   Rectangle
   {
       id:ghaem_pirouzi_5
       width:size_b ; height:182; color:"green";
       anchors{top:ghaem_pirouzi_3.bottom;right:ghaem_pirouzi_3.left;rightMargin:-7}

   }
   Rectangle
   {
       id:ghaem_pirouzi_6
       width:size_b ; height:182; color:"green";
       anchors{top:ghaem_pirouzi_3.bottom;right:ghaem_pirouzi_3.left;rightMargin:-2}

   }
   Rectangle
   {
       id:pirouzi_R_1
       width:size_b ; height:118; color:"green";
       anchors{top:d30.bottom;right:d30.left;topMargin:30;rightMargin:-13}

   }
   Rectangle
   {
       id:pirouzi_R_2
       width:size_b ; height:118; color:"green";
       anchors{top:d30.bottom;right:d30.left;topMargin:30;rightMargin:-18}

   }
   Rectangle
   {
       id:pirouzi_R_3
       width:138 ; height:size_b ; color:"green";
       anchors{top:pirouzi_R_2.bottom;right:pirouzi_R_2.left;topMargin:-7}

   }
   Rectangle
   {
       id:pirouzi_R_4
       width:138 ; height:size_b ; color:"green";
       anchors{top:pirouzi_R_2.bottom;right:pirouzi_R_2.left;topMargin:-2}

   }
   Rectangle
   {
       id:r_javanmard_1
       width:100 ; height:size_b ; color:"green";
       anchors{top:pirouzi_R_3.top;right:c6.left;}

   }
   Rectangle
   {
       id:r_javanmard_2
       width:100 ; height:size_b ; color:"green";
       anchors{top:pirouzi_R_4.top;right:c6.left;}

   }
   Rectangle
   {
       id:r_javanmard_3
       width:size_b ; height:173 ; color:"green";
       anchors{top:r_javanmard_2.bottom;right:r_javanmard_1.left;topMargin:-5;rightMargin:-7}

   }
   Rectangle
   {
       id:r_javanmard_4
       width:size_b ; height:173 ; color:"green";
       anchors{top:r_javanmard_2.bottom;right:r_javanmard_1.left;topMargin:-5;rightMargin:-2}

   }
   Station{
       id:javanmard ;s_width: 50 ; s_height: 50 ; s_text: "BUS2" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:r_javanmard_3.bottom;right:r_javanmard_3.left;rightMargin:25}
   }
   Rectangle
   {
       id:ghaem_ansary_1
       width:size_b ; height:30 ; color:"green";
       anchors{bottom:b11.top;right:b11.left;rightMargin:-22}

   }
   Rectangle
   {
       id:ghaem_ansary_2
       width:size_b ; height:30 ; color:"green";
       anchors{bottom:b11.top;right:b11.left;rightMargin:-27}

   }
   Rectangle
   {
       id:ghaem_ansary_3
       width:380 ; height:size_b  ; color:"green";
       anchors{top:ghaem_ansary_2.top;right:ghaem_ansary_2.left;}

   }
   Rectangle
   {
       id:ghaem_ansary_4
       width:380 ; height:size_b ; color:"green";
       anchors{top:ghaem_ansary_2.top;right:ghaem_ansary_2.left;topMargin:5}

   }
   Station{
       id:ansary ;s_width: 50 ; s_height: 50 ; s_text: "BUS2" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:ghaem_ansary_3.bottom ;right:ghaem_ansary_3.left;topMargin:-23;rightMargin:30}
   }
   Rectangle
   {
       id:ebnesina_tehranpars_1
       width:size_b ; height:73 ; color:"green";
       anchors{top:d27.bottom;right:d28.left;topMargin:13;rightMargin:-18}

   }
   Rectangle
   {
       id:ebnesina_tehranpars_2
       width:size_b ; height:73  ; color:"green";
      anchors{top:d27.bottom;right:d28.left;topMargin:13;rightMargin:-13}

   }
   Rectangle
   {
       id:ebnesina_tehranpars_3
       width:260 ; height:size_b  ; color:"green";
       anchors{top:ebnesina_tehranpars_2.bottom;left:ebnesina_tehranpars_2.right;topMargin:-7}

   }
   Rectangle
   {
       id:ebnesina_tehranpars_4
       width:260 ; height:size_b ; color:"green";
       anchors{top:ebnesina_tehranpars_2.bottom;left:ebnesina_tehranpars_2.right;topMargin:-2}

   }
   Station{
       id:tehranpars ;s_width: 50 ; s_height: 50 ; s_text: "BUS1" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:ebnesina_tehranpars_3.top ;left:ghaem_ansary_3.right;topMargin:-20;leftMargin:-40}
   }
   Rectangle
   {
       id:emam_ebnesina_1
       width:size_b ; height:118  ; color:"green";
      anchors{bottom:d28.bottom;right:d28.left;rightMargin:-13}

   }
   Rectangle
   {
       id:emam_ebnesina_2
       width:size_b ; height:118  ; color:"green";
       anchors{bottom:d28.bottom;right:d28.left;rightMargin:-18}

   }
   Rectangle
   {
       id:emam_ebnesina_3
       width:77 ; height:size_b  ; color:"green";
       anchors{top:emam_ebnesina_2.top;right:emam_ebnesina_2.left;}

   }
   Rectangle
   {
       id:emam_ebnesina_4
       width:77 ; height:size_b ; color:"green";
       anchors{top:emam_ebnesina_2.top;right:emam_ebnesina_2.left;topMargin: 5}

   }
   Rectangle
   {
       id:dowlat_emam_1
       width:145 ; height:size_b  ; color:"green";
       anchors{top:emam_ebnesina_3.top;right:c2.left;}

   }
   Rectangle
   {
       id:dowlat_emam_2
       width:145 ; height:size_b ; color:"green";
       anchors{top:emam_ebnesina_4.top;right:c2.left;}

   }
   Rectangle
   {
       id:dowlat_emam_3
       width:size_b ; height:90  ; color:"green";
       anchors{top:dowlat_emam_1.top;right:dowlat_emam_2.left;}

   }
   Rectangle
   {
       id:dowlat_emam_4
       width:size_b ; height:90 ; color:"green";
       anchors{top:dowlat_emam_1.top;right:dowlat_emam_2.left;rightMargin:-5}

   }
   Rectangle
   {
       id:dowlat_emam_5
       width:47 ; height:size_b  ; color:"green";
       anchors{top:dowlat_emam_3.bottom;right:dowlat_emam_3.left;rightMargin:-7}

   }
   Rectangle
   {
       id:dowlat_emam_6
       width:47 ; height:size_b ; color:"green";
       anchors{top:dowlat_emam_3.bottom;right:dowlat_emam_3.left;topMargin:-5;rightMargin:-7}

   }
   Rectangle
   {
       id:ferdowsi_dowlat_1
       width:size_b ; height:25  ; color:"green";
       anchors{top:a18.bottom;right:a18.left;topMargin:28;rightMargin:-13}

   }
   Rectangle
   {
       id:ferdowsi_dowlat_2
       width:size_b ; height:25 ; color:"green";
       anchors{top:a18.bottom;right:a18.left;topMargin:28;rightMargin:-18}

   }
   Rectangle
   {
       id:ferdowsi_dowlat_3
       width:117 ; height:size_b  ; color:"green";
       anchors{top:ferdowsi_dowlat_2.bottom;right:ferdowsi_dowlat_2.left;topMargin:-2}

   }
   Rectangle
   {
       id:ferdowsi_dowlat_4
       width:117 ; height:size_b ; color:"green";
       anchors{top:ferdowsi_dowlat_2.bottom;right:ferdowsi_dowlat_2.left;topMargin:-7;}

   }
   Rectangle
   {
       id:ferdowsi_dowlat_5
       width:size_b ; height:65  ; color:"green";
       anchors{bottom:ferdowsi_dowlat_3.top;right:ferdowsi_dowlat_3.left;rightMargin:-2}

   }
   Rectangle
   {
       id:ferdowsi_dowlat_6
       width:size_b ; height:65 ; color:"green";
       anchors{bottom:ferdowsi_dowlat_3.top;right:ferdowsi_dowlat_3.left;rightMargin:-7}

   }
   Rectangle
   {
       id:enghelab_ferdowsi_1
       width:200 ; height:size_b  ; color:"green";
       anchors{top:ferdowsi_dowlat_5.top;right:ferdowsi_dowlat_5.left;topMargin:-5;rightMargin:-5}

   }
   Rectangle
   {
       id:enghelab_ferdowsi_2
       width:200 ; height:size_b ; color:"green";
       anchors{top:ferdowsi_dowlat_5.top;right:ferdowsi_dowlat_5.left;rightMargin:-5}

   }
   Rectangle
   {
       id:lines_1
       width:size_b ; height:18  ; color:"green";
       anchors{top:d18.bottom;right:d18.left;topMargin:30;rightMargin:-13}

   }
   Rectangle
   {
       id:lines_2
       width:size_b ; height:18 ; color:"green";
       anchors{top:d18.bottom;right:d18.left;topMargin:30;rightMargin:-18}

   }
   Rectangle
   {
       id:lines_3
       width:size_b ; height:18  ; color:"green";
       anchors{top:d15.bottom;right:d15.left;topMargin:30;rightMargin:-13}

   }
   Rectangle
   {
       id:lines_4
       width:size_b ; height:18 ; color:"green";
       anchors{top:d15.bottom;right:d15.left;topMargin:30;rightMargin:-18}

   }
   Rectangle
   {
       id:lines_5
       width:size_b ; height:18  ; color:"green";
       anchors{top:d9.bottom;right:d9.left;topMargin:30;rightMargin:-13}

   }
   Rectangle
   {
       id:lines_6
       width:size_b ; height:18 ; color:"green";
       anchors{top:d9.bottom;right:d9.left;topMargin:30;rightMargin:-18}

   }
   Rectangle
   {
       id:lines_7
       width:size_b ; height:18  ; color:"green";
       anchors{top:d7.bottom;right:d7.left;topMargin:30;rightMargin:-13}

   }
   Rectangle
   {
       id:lines_8
       width:size_b ; height:18 ; color:"green";
       anchors{top:d7.bottom;right:d7.left;topMargin:30;rightMargin:-18}

   }
   Rectangle
   {
       id:moein_enghelab_1
       width:237 ; height:size_b  ; color:"green";
       anchors{top:enghelab_ferdowsi_1.top;right:enghelab_ferdowsi_1.left;rightMargin:-5}

   }
   Rectangle
   {
       id:moein_enghelab_2
       width:237 ; height:size_b ; color:"green";
       anchors{top:enghelab_ferdowsi_2.top;right:enghelab_ferdowsi_2.left;rightMargin:-5}

   }
   Rectangle
   {
       id:azadi_moein_1
       width:65 ; height:size_b  ; color:"green";
       anchors{top:moein_enghelab_1.top;right:moein_enghelab_1.left;rightMargin:-5}

   }
   Rectangle
   {
       id:azadi_moein_2
       width:65 ; height:size_b ; color:"green";
       anchors{top:moein_enghelab_2.top;right:moein_enghelab_2.left;rightMargin:-5}

   }
   Rectangle
   {
       id:bimeh_azadi_1
       width:196 ; height:size_b  ; color:"green";
       anchors{top:d7.top;right:d7.left;topMargin:11}

   }
   Rectangle
   {
       id:bimeh_azadi_2
       width:196 ; height:size_b ; color:"green";
       anchors{top:d7.top;right:d7.left;topMargin:16}
   }
   Station{
       id:bimeh ;s_width: 50 ; s_height: 50 ; s_text: "BUS2" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:bimeh_azadi_1.top ;right:bimeh_azadi_1.left;topMargin:-22;leftMargin:-40}
   }
   Rectangle
   {
       id:sadr_tajrish_1
       width:140 ; height:size_b  ; color:"green";
       anchors{top:tajrish.top;right:tajrish.left;topMargin:22}

   }
   Rectangle
   {
       id:sadr_tajrish_2
       width:140 ; height:size_b ; color:"green";
       anchors{top:tajrish.top;right:tajrish.left;topMargin:27}
   }
   Rectangle
   {
       id:sadr_tajrish_3
       width:size_b ; height:80  ; color:"green";
       anchors{top:sadr_tajrish_1.bottom;right:sadr_tajrish_1.left;rightMargin:-2}

   }
   Rectangle
   {
       id:sadr_tajrish_4
       width:size_b ; height:80 ; color:"green";
       anchors{top:sadr_tajrish_1.bottom;right:sadr_tajrish_1.left;rightMargin:-7}

   }
   Station{
       id:sadr ;s_width: 50 ; s_height: 50 ; s_text: "BUS3" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:sadr_tajrish_3.bottom ;right:sadr_tajrish_3.left;rightMargin:20}
   }
   Rectangle
   {
       id:tajrish_mirdamad_1
       width:30 ; height:size_b  ; color:"green";
       anchors{top:sadr_tajrish_1.top;left:sadr_tajrish_1.right;leftMargin:50}

   }
   Rectangle
   {
       id:tajrish_mirdamad_2
       width:30 ; height:size_b ; color:"green";
        anchors{top:sadr_tajrish_2.top;left:sadr_tajrish_2.right;leftMargin:50}

   }
   Rectangle
   {
       id:tajrish_mirdamad_3
       width:size_b ; height:222  ; color:"green";
       anchors{top:tajrish_mirdamad_1.bottom;right:tajrish_mirdamad_1.left;rightMargin:-25}

   }
   Rectangle
   {
       id:tajrish_mirdamad_4
       width:size_b ; height:222 ; color:"green";
       anchors{top:tajrish_mirdamad_1.bottom;right:tajrish_mirdamad_1.left;rightMargin:-30}

   }
   Rectangle
   {
       id:tajrish_mirdamad_5
       width:41 ; height:size_b  ; color:"green";
       anchors{top:tajrish_mirdamad_3.bottom;right:tajrish_mirdamad_3.left;topMargin:-2;rightMargin:-5}

   }
   Rectangle
   {
       id:tajrish_mirdamad_6
       width:41 ; height:size_b ; color:"green";
       anchors{top:tajrish_mirdamad_3.bottom;right:tajrish_mirdamad_3.left;topMargin:-7;rightMargin:-5}
   }
   Rectangle
   {
       id:mirdamad_v_1
       width:295 ; height:size_b  ; color:"green";
       anchors{top:tajrish_mirdamad_5.top;right:tajrish_mirdamad_5.left;rightMargin:30}

   }
   Rectangle
   {
       id:mirdamad_v_2
       width:295 ; height:size_b ; color:"green";
       anchors{top:tajrish_mirdamad_6.top;right:tajrish_mirdamad_6.left;rightMargin:30}
   }
   Rectangle
   {
       id:mirdamad_v_3
       width:size_b ; height:245  ; color:"green";
       anchors{top:mirdamad_v_1.bottom;right:mirdamad_v_1.left;topMargin:-5;rightMargin:-2}

   }
   Rectangle
   {
       id:mirdamad_v_4
      width:size_b ; height:245  ; color:"green";
       anchors{top:mirdamad_v_1.bottom;right:mirdamad_v_1.left;topMargin:-5;rightMargin:-7}
   }
   Rectangle
   {
       id:mirdamad_v_5
       width:98 ; height:size_b  ; color:"green";
       anchors{top:mirdamad_v_3.bottom;left:mirdamad_v_3.right;topMargin:-2}

   }
   Rectangle
   {
       id:mirdamad_v_6
       width:98 ; height:size_b ; color:"green";
       anchors{top:mirdamad_v_3.bottom;left:mirdamad_v_3.right;topMargin:-7}
   }
   Rectangle
   {
       id:v_rahahan_1
       width:30 ; height:size_b  ; color:"green";
       anchors{top:mirdamad_v_5.top;left:b18.right;leftMargin:30}

   }
   Rectangle
   {
       id:v_rahahan_2
       width:30 ; height:size_b ; color:"green";
       anchors{top:mirdamad_v_6.top;left:b18.right;leftMargin:30}
   }
   Rectangle
   {
       id:v_rahahan_3
       width:size_b ; height:281  ; color:"green";
       anchors{top:v_rahahan_1.bottom;left:v_rahahan_1.right;topMargin:-5;leftMargin:-7}

   }
   Rectangle
   {
       id:v_rahahan_4
      width:size_b ; height:281  ; color:"green";
       anchors{top:v_rahahan_1.bottom;left:v_rahahan_1.right;topMargin:-5;leftMargin:-2}
   }
   Rectangle
   {
       id:v_rahahan_5
       width:32 ; height:size_b  ; color:"green";
       anchors{top:v_rahahan_3.bottom;right:v_rahahan_3.left;topMargin:-2;rightMargin:-5}

   }
   Rectangle
   {
       id:v_rahahan_6
       width:32 ; height:size_b ; color:"green";
       anchors{top:v_rahahan_3.bottom;right:v_rahahan_3.left;topMargin:-7;rightMargin:-5}
   }
   Rectangle
   {
       id:rahahan_shahrak_1
       width:130 ; height:size_b  ; color:"green";
       anchors{top:v_rahahan_5.top;right:b26.left;}

   }
   Rectangle
   {
       id:rahahan_shahrak_2
       width:130 ; height:size_b ; color:"green";
       anchors{top:v_rahahan_6.top;right:b26.left;}
   }
   Rectangle
   {
       id:rahahan_shahrak_3
       width:size_b ; height:190  ; color:"green";
       anchors{top:rahahan_shahrak_1.bottom;right:rahahan_shahrak_2.left;topMargin:-5;rightMargin:-2}

   }
   Rectangle
   {
       id:rahahan_shahrak_4
      width:size_b ; height:190  ; color:"green";
       anchors{top:rahahan_shahrak_1.bottom;right:rahahan_shahrak_2.left;topMargin:-5;rightMargin:-7}
   }
   Station{
       id:shahrak ;s_width: 50 ; s_height: 50 ; s_text: "BUS3" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:rahahan_shahrak_3.bottom ;right:rahahan_shahrak_3.left;rightMargin:20}
   }
   //name

       Text{text:"<i>Kahrizak</i>"; anchors{top:kahrizak.bottom ; left:kahrizak.left ; topMargin:54}}



       Text{text:"<i>Shahrak-e Shari'ati</i>";
           anchors{top:shahrak.bottom ; left:shahrak.left ; topMargin:53 ; leftMargin:-27}}



       Text{
           text:"<i>Azadegan</i>";
         anchors{top:azadegan.bottom ; left:azadegan.left ; topMargin:54;}
       }



       Text{
           text:"<i>Payaneh Javanmard</i>";
        anchors{top:javanmard.bottom ; left:javanmard.left ; topMargin:54 ; leftMargin:-25}
       }


        Text{
          text:"<i>Haram-e Hazrat-e Abdolazim</i>";
          anchors{top:h.bottom ; left:h.left ; topMargin:52;leftMargin:-55}
       }





 }

}
