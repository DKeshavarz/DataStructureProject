import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQml 2.3
import QtQuick.Controls.Styles 1.4

Item
{
  anchors.fill:parent
  property int size: 3 ; property int size_b: 2 ; property color bus_2: "#667C26";property color bus_1: "#1B8A6B"
  property color bus_3: "#2C3539"
  Rectangle
  {
   anchors.fill:parent
   color:"#DFD3E3"
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
       id:gheytariyeh ;anchors{top:a1.bottom; right:a1.left; rightMargin:13}
   }
   Rectangle
   {
       id:a3;height: 40; width: size ;color:"red";
       anchors{right:gheytariyeh.left; rightMargin:-15;top:parent.top; topMargin: 130}
   }
   Station
   {
       id:gholhak ;anchors{ top:a3.bottom;right:a3.left;rightMargin:13}
   }
   Rectangle
   {
       id:a5 ;height: 40;width: size ;color:"red";
       anchors{right:gholhak.left;rightMargin:-15; top:gholhak.top; topMargin:30}
   }
   Station
   {
       id:mirdamad ;anchors{top:a5.bottom; right:a5.left; rightMargin:13}
   }
   Rectangle
   {
       id:a7; height: 40; width: size ;color:"red";
       anchors{right:mirdamad.left;rightMargin:-15;top:mirdamad.top;  topMargin:30}
   }
   Station
   {
       id:ha ;anchors{ top:a7.bottom;right:a7.left; rightMargin:13}
   }
   Rectangle
   {
       id:a9;
       height: 30;  width: size ; color:"red";anchors{right:ha.left; rightMargin:-15; top:ha.top;topMargin:30}
   }
   Station
   {
       id:beheshti;
       anchors{ top:a9.bottom; right:a9.left;  rightMargin:13}
   }
   Rectangle
   {
       id:a11;height: 25;width: size;color:"red";
       anchors{right:beheshti.left; rightMargin:-15; top:beheshti.top;topMargin:30}
   }
   Station
   {
       id:mofatteh ;anchors{ top:a11.bottom; right:a11.left; rightMargin:13}
   }
   Rectangle
   {
       id:a13; height: 25; width: size;  color:"red";
       anchors{right:mofatteh.left; rightMargin:-15;top:mofatteh.top; topMargin:30}
   }
   Station{
       id:hafte_tir ;anchors{ top:a13.bottom; right:a13.left; rightMargin:13}
   }
Rectangle{id:a15;height:30; width: size; color:"red";anchors {right:hafte_tir.left;rightMargin:-15;top:hafte_tir.top;topMargin:30}}
   Station
   {
       id:taleghani ;anchors{ top:a15.bottom; right:a15.left; rightMargin:13}
   }
   Rectangle
   {
       id:a17; height: 30; width: size;color:"red";
       anchors{right:taleghani.left; rightMargin:-15; top:taleghani.top;topMargin:30}
   }
   Station
   {
       id:dowlat  ;anchors{top:a17.bottom;right:a17.left; rightMargin:13}
   }
   Rectangle
   {
       id:a19;height: 50; width: size;color:"red";anchors
       { right:dowlat.left;rightMargin:-15;top:dowlat.top; topMargin:30}
   }
   Station
   {
       id:khordad ;anchors{ top:a19.bottom;right:a19.left; rightMargin:13}
   }
   Rectangle
   {
       id:a21;height: 30;width:size ; color:"red";
       anchors{right:khordad.left; rightMargin:-15;  top:khordad.top;topMargin:30}
   }
   Station
   {
       id:shoush ;
       anchors{ top:a21.bottom;  right:a21.left; rightMargin:13}
   }
   Rectangle
   {
       id:a23; height: 50;  width: size;  color:"red";
       anchors{ right:shoush.left;rightMargin:-15; top:shoush.top; topMargin:30}
   }
   Station
   {
       id:jonoub ;anchors{  top:a23.bottom;  right:a23.left; rightMargin:13}
   }
   Rectangle
   {   id:a25; height: 30;width: size; color:"red";
       anchors{ right:jonoub.left;rightMargin:-15;top:jonoub.top; topMargin:30}
   }
   Station
   {
       id:rey ;anchors{ top:a25.bottom; right:a25.left;rightMargin:13}
   }
   Rectangle
   {
       id:a27; height: 50;width: size; color:"red";
       anchors{right:rey.left; rightMargin:-15; top:rey.top; topMargin:30}
   }
   Station{
       id:kahrizak ;s_width: 50;s_height: 50;  s_text: "<b>Line1</b>";  s_color_text: "red"
       anchors{ top:a27.bottom;right:a27.left; rightMargin:23}
   }
   Rectangle
   {
     id:b; height: size ;width: 50; color:"#333CFF"
     anchors{top:beheshti.top;left:beheshti.right;topMargin:14;leftMargin:30}
   }
   Station
   {
       id:sohrevardi;
       anchors{top:beheshti.top;left:b.right}
   }
   Rectangle
   {
     id:b2; height: size ;width:20 ; color:"#333CFF"
     anchors{top:b.top;left:sohrevardi.right;leftMargin:30}
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
       id:gh
       anchors{top:b4.top;left:b4.right;topMargin:-13}
   }
   Rectangle
   {
     id:b6 ; height: size ;width:80 ; color:"#333CFF"
     anchors{top:b4.top;left:gh.right;leftMargin:30}
   }
   Station
   {
       id:z;
       anchors{top:gh.top;left:b6.right;}
   }
   Rectangle
   {
     id:b8 ; height: size ;width:80 ; color:"#333CFF"
     anchors{top:b6.top;left:z.right;leftMargin:30}
   }
   Station
   {
       id:aghdasiyeh;
       anchors{top:z.top;left:b8.right;}
   }
   Rectangle
   {
     id:b10 ; height: size ;width:170 ; color:"#333CFF"
     anchors{top:b8.top;left:aghdasiyeh.right;leftMargin:30}
   }
   Station
   {
       id:ghaem; s_width: 50 ;s_height: 50 ; s_text:"<b>Line3</b>" ; s_color_text: "#333CFF"
       anchors{top:aghdasiyeh.top;left:b10.right;topMargin:-10}
   }
   Rectangle
   {
     id:b12 ; height: size ;width:150 ; color:"#333CFF"
     anchors{top:b.top;right:beheshti.left;}
   }
   Station
   {
       id:shirazi;
       anchors{top:beheshti.top;right:b12.left}
   }
   Rectangle
   {
     id:b14 ; height: size ;width:30 ; color:"#333CFF"
     anchors{top:b12.top;right:shirazi.left;}
   }
   Rectangle
   {
     id:jahad ; height:30 ;width:size ; color:"#3355FF"
     anchors{top:b14.bottom;right:b14.left;topMargin:-2;rightMargin:-3}
   }
   Station
   {
       id:b16;
       anchors{top:jahad.bottom;right:jahad.left;rightMargin:14}
   }
   Rectangle
   {
     id:b17 ; height:40 ;width:size ; color:"#333CFF"
     anchors{top:b16.bottom;right:b16.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:v;
       anchors{top:hafte_tir.bottom;right:b17.left;rightMargin:14}
   }
   Rectangle
   {
     id:b19 ; height:30 ;width:size ; color:"#333CFF"
     anchors{top:v.top;right:v.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:teatr;
       anchors{top:b19.bottom;right:b19.left;rightMargin:14}
   }
   Rectangle
   {
     id:moniriyeh ; height:65 ;width:size ; color:"#333CFF"
     anchors{top:teatr.bottom;right:teatr.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:b22;
       anchors{top:moniriyeh.bottom;right:moniriyeh.left;rightMargin:14}
   }
   Rectangle
   {
     id:b23 ; height:30 ;width:size ; color:"#333CFF"
     anchors{top:b22.bottom;right:b22.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:mahdiyeh;
       anchors{top:b23.bottom;right:b23.left;rightMargin:14}
   }
   Rectangle
   {
     id:b25 ; height:30 ;width:size ; color:"#333CFF"
     anchors{top:mahdiyeh.bottom;right:mahdiyeh.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:rahahan;
       anchors{top:b25.bottom;right:b25.left;rightMargin:14}
   }
   Rectangle
   {
     id:b27 ; height:30 ;width:size ; color:"#333CFF"
     anchors{top:rahahan.bottom;right:rahahan.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:javadiyeh;
       anchors{top:b27.bottom;right:b27.left;rightMargin:14}
   }
   Rectangle
   {
     id:b29 ; height:35 ;width:size ; color:"#333CFF"
     anchors{top:javadiyeh.bottom;right:javadiyeh.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:zamzam;
       anchors{top:b29.bottom;right:b29.left;rightMargin:14}
   }
   Rectangle
   {
     id:b31 ; height:50 ;width:size ; color:"#333CFF"
     anchors{top:zamzam.bottom;right:zamzam.left;rightMargin:-16;topMargin:30}
   }
   Station
   {
       id:azadegan ;s_width: 50 ; s_height: 50 ; s_text: "<b>Line3</b>" ; s_color_text: "#333CFF"
       anchors{top:b31.bottom;right:b31.left;rightMargin:22}
   }
   Rectangle
   {
     id:c; height:size ;width:200 ; color:"#ff1493"
     anchors{top:hafte_tir.bottom;left:hafte_tir.right;topMargin:14;leftMargin:30}
   }
   Rectangle
   {
     id:c1; height:20 ;width:size ; color:"#ff1493"
     anchors{top:c.bottom;left:c.right;topMargin:-2;leftMargin:-3}
   }
   Station
   {
       id:em;
       anchors{top:c1.bottom;right:c1.left;rightMargin:13}
   }
   Rectangle
   {
     id:c3; height:100 ;width:size ; color:"#ff1493"
     anchors{top:em.bottom;right:em.left;topMargin:30;rightMargin:-15}
   }
   Station
   {
       id:sh;
       anchors{top:c3.bottom;right:c3.left;rightMargin:13}
   }
   Rectangle
   {
     id:c5; height:100 ;width:size ; color:"#ff1493"
     anchors{top:sh.bottom;right:sh.left;topMargin:30;rightMargin:-15}
   }
   Station
   {
       id:r
       anchors{top:c5.bottom;right:c5.left;rightMargin:13}
   }
   Rectangle
   {
     id:c7; height:185 ;width:size ; color:"#ff1493"
     anchors{top:r.bottom;right:r.left;topMargin:30;rightMargin:-15}
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
     anchors{top:c.top;right:hafte_tir.left;}
   }
   Rectangle
   {
     id:c11; height:size ; width:160 ; color:"#ff1493"
     anchors{top:c10.top;right:c10.left;rightMargin:28}
   }
   Station
   {
       id:boostan;
       anchors{top:v.top;right:c11.left;}
   }
   Rectangle
   {
     id:c13; height:170 ; width:size ; color:"#ff1493"
     anchors{bottom:boostan.top;right:boostan.left;rightMargin:-15}
   }
   Rectangle
   {
     id:c14; height:size ; width:100 ; color:"#ff1493"
     anchors{top:c13.top;right:boostan.left;rightMargin:-15}
   }
   Station
   {
       id:yadegar;
       anchors{top:c14.top;right:c14.left;topMargin:-15;rightMargin:30;}
   }
   Rectangle
   {
     id:c16; height:size ; width:130 ; color:"#ff1493"
     anchors{top:yadegar.top;right:yadegar.left;topMargin:15;}
   }
   Station
   {
       id:kashani;
       anchors{top:yadegar.top;right:c16.left;}
   }
   Rectangle
   {
     id:c18; height:size ; width:200 ; color:"#ff1493"
     anchors{top:kashani.top;right:kashani.left;topMargin:15;}
   }
   Station
   {
       id:kouhsar ;s_width: 50 ; s_height: 50 ; s_text: "<b>Line6</b>" ; s_color_text: "#ff1493"
       anchors{top:kashani.top;right:c18.left;topMargin:-10}
   }
   Rectangle
   {
     id:d ; height:260 ; width:size ; color:"yellow"
     anchors{bottom:kashani.top;right:c16.left;rightMargin:-15}
   }
   Station
   {
       id:chaharbagh ;s_width: 50 ; s_height: 50 ; s_text: "<b>Line4</b>" ; s_color_text: "yellow"
       anchors{bottom:d.top;right:d.left;bottomMargin:20;rightMargin:23}
   }
   Rectangle
   {
     id:d2 ; height:50 ; width:size ; color:"yellow"
     anchors{top:kashani.bottom;right:c16.left;topMargin:30;rightMargin:-15}
   }
   Station
   {
       id:jafari ;
       anchors{top:d2.bottom;right:d2.left;rightMargin:14}
   }
   Rectangle
   {
     id:d4 ; height:50 ; width:size ; color:"yellow"
     anchors{top:jafari.bottom;right:jafari.left;topMargin:30;rightMargin:-15}
   }
   Station
   {
       id:sabz
       anchors{top:d4.bottom;right:d4.left;rightMargin:14}
   }
   Rectangle
   {
     id:d6 ; height:55 ; width:size ; color:"yellow"
     anchors{top:sabz.bottom;right:sabz.left;topMargin:30;rightMargin:-15}
   }
   Station
   {
       id:azadi
       anchors{top:d6.bottom;right:d6.left;rightMargin:14}
   }
   Rectangle
   {
     id:d8 ; height:size ; width:30 ; color:"yellow"
     anchors{top:azadi.top;left:azadi.right;topMargin: 15;leftMargin:30}
   }
   Station
   {
       id:moein
       anchors{top:azadi.top;left:d8.right}
   }
   Rectangle
   {
     id:d10 ; height:size ; width:40 ; color:"yellow"
     anchors{top:d8.top;left:moein.right;leftMargin: 30}
   }
   Station
   {
       id:shadman
       anchors{top:moein.top;left:d10.right}
   }
   Rectangle
   {
     id:d12 ; height:size ; width:40 ; color:"yellow"
     anchors{top:d10.top;left:shadman.right;leftMargin: 30}
   }
   Station
   {
       id:tohid
       anchors{top:shadman.top;left:d12.right}
   }
   Rectangle
   {
     id:d14 ; height:size ; width:72 ; color:"yellow"
     anchors{top:d12.top;left:tohid.right;leftMargin: 30}
   }
   Station
   {
       id:meydan
       anchors{top:tohid.top;left:d14.right}
   }
   Rectangle
   {
     id:d16 ; height:size ; width:76 ; color:"yellow"
     anchors{top:d14.top;left:meydan.right;leftMargin: 30}
   }
   Rectangle{id:d17 ; height:size ; width:50 ; color:"yellow";anchors{top:d16.top;left:teatr.right;leftMargin: 30}}
   Station{
       id:ferdowsi
       anchors{top:teatr.top;left:d17.right}
   }
   Rectangle{id:d19 ; height:size ; width:30 ; color:"yellow";anchors{top:d16.top;left:ferdowsi.right;leftMargin: 30}}
   Rectangle{id:d20 ; height:60 ; width:size ; color:"yellow";anchors{top:d19.bottom;left:d19.right;topMargin:-3;}}
   Rectangle{id:d21 ; height:size ; width:52 ; color:"yellow";anchors{top:d20.bottom;left:d20.right;leftMargin: -3}}
   Rectangle{id:d22 ; height:size ; width:90 ; color:"yellow";anchors{top:d21.top;left:dowlat.right;leftMargin: 30}}
   Station{
       id:shemiran;anchors{top:dowlat.top;left:d22.right}
   }
   Rectangle{id:d24 ; height:size ; width:30 ; color:"yellow";anchors{top:d22.top;left:shemiran.right;leftMargin: 30}}
   Rectangle{id:d25 ; height:43 ; width:size ; color:"yellow";anchors{top:d24.bottom;left:d24.right;leftMargin: -3}}
   Rectangle{id:d26 ; height:size ; width:38 ; color:"yellow";anchors{top:d25.bottom;left:d25.right;topMargin:-3;leftMargin: -3}}
   Rectangle{id:d27 ; height:size ; width:60 ; color:"yellow";anchors{top:d26.top;left:sh.right;leftMargin: 30}}
   Station{
       id:eb ;anchors{top:sh.top;left:d27.right}
   }
   Rectangle{id:d29 ; height:size ; width:30 ; color:"yellow";anchors{top:d27.top;left:eb .right;leftMargin: 30}}
   Station{
       id:pirouzi ;anchors{top:eb .top;left:d29.right}
   }
   Rectangle{id:d31 ; height:size ; width:30 ; color:"yellow";anchors{top:d29.top;left:pirouzi.right;leftMargin: 30}}
   Station{
       id:nabard ;anchors{top:pirouzi.top;left:d31.right}
   }
   Rectangle{id:d33 ; height:size ; width:30 ; color:"yellow";anchors{top:d31.top;left:nabard.right;leftMargin: 30}}
   Station{
       id:nirou ;anchors{top:nabard.top;left:d33.right}
   }
   Rectangle{id:d35 ; height:size ; width:60 ; color:"yellow";anchors{top:d33.top;left:nirou.right;leftMargin: 30}}
   Station{
       id:k ;s_width: 50 ; s_height: 50 ; s_text: "<b>Line4</b>" ; s_color_text: "yellow"
       anchors{top:nirou.top;left:d35.right;topMargin:-10}
   }

   Rectangle
   {
       id:ghaem_pirouzi_1
       width:size_b ; height:105; color:bus_2;
       anchors{top:ghaem.bottom;left:ghaem.left;topMargin:50;leftMargin:26}

   }
   Rectangle
   {
       id:ghaem_pirouzi_2
       width:size_b ; height:105; color:bus_2;
       anchors{top:ghaem.bottom;left:ghaem.left;topMargin:50;leftMargin:21}

   }
   Rectangle
   {
       id:ghaem_pirouzi_3
       width:244 ; height:size_b ; color:bus_2;
       anchors{top:ghaem_pirouzi_1.bottom;right:ghaem_pirouzi_1.left;topMargin:-6}

   }
   Rectangle
   {
       id:ghaem_pirouzi_4
       width:244 ; height:size_b ; color:bus_2;
       anchors{top:ghaem_pirouzi_1.bottom;right:ghaem_pirouzi_1.left;topMargin:-1}

   }
   Rectangle
   {
       id:ghaem_pirouzi_5
       width:size_b ; height:182; color:bus_2;
       anchors{top:ghaem_pirouzi_3.bottom;right:ghaem_pirouzi_3.left;rightMargin:-7}

   }
   Rectangle
   {
       id:ghaem_pirouzi_6
       width:size_b ; height:182; color:bus_2;
       anchors{top:ghaem_pirouzi_3.bottom;right:ghaem_pirouzi_3.left;rightMargin:-2}

   }
   Rectangle
   {
       id:pirouzi_R_1
       width:size_b ; height:118; color:bus_2;
       anchors{top:pirouzi.bottom;right:pirouzi.left;topMargin:30;rightMargin:-13}

   }
   Rectangle
   {
       id:pirouzi_R_2
       width:size_b ; height:118; color:bus_2;
       anchors{top:pirouzi.bottom;right:pirouzi.left;topMargin:30;rightMargin:-18}

   }
   Rectangle
   {
       id:pirouzi_R_3
       width:138 ; height:size_b ; color:bus_2;
       anchors{top:pirouzi_R_2.bottom;right:pirouzi_R_2.left;topMargin:-7}

   }
   Rectangle
   {
       id:pirouzi_R_4
       width:138 ; height:size_b ; color:bus_2;
       anchors{top:pirouzi_R_2.bottom;right:pirouzi_R_2.left;topMargin:-2}

   }
   Rectangle
   {
       id:r_javanmard_1
       width:100 ; height:size_b ; color:bus_2;
       anchors{top:pirouzi_R_3.top;right:r.left;}

   }
   Rectangle
   {
       id:r_javanmard_2
       width:100 ; height:size_b ; color:bus_2;
       anchors{top:pirouzi_R_4.top;right:r.left;}

   }
   Rectangle
   {
       id:r_javanmard_3
       width:size_b ; height:173 ; color:bus_2;
       anchors{top:r_javanmard_2.bottom;right:r_javanmard_1.left;topMargin:-5;rightMargin:-7}

   }
   Rectangle
   {
       id:r_javanmard_4
       width:size_b ; height:173 ; color:bus_2;
       anchors{top:r_javanmard_2.bottom;right:r_javanmard_1.left;topMargin:-5;rightMargin:-2}

   }
   Station{
       id:javanmard ;s_width: 50 ; s_height: 50 ; s_text: "BUS2" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:r_javanmard_3.bottom;right:r_javanmard_3.left;rightMargin:25}
   }
   Rectangle
   {
       id:ghaem_ansary_1
       width:size_b ; height:30 ; color:bus_2;
       anchors{bottom:ghaem.top;right:ghaem.left;rightMargin:-22}

   }
   Rectangle
   {
       id:ghaem_ansary_2
       width:size_b ; height:30 ; color:bus_2;
       anchors{bottom:ghaem.top;right:ghaem.left;rightMargin:-27}

   }
   Rectangle
   {
       id:ghaem_ansary_3
       width:380 ; height:size_b  ; color:bus_2;
       anchors{top:ghaem_ansary_2.top;right:ghaem_ansary_2.left;}

   }
   Rectangle
   {
       id:ghaem_ansary_4
       width:380 ; height:size_b ; color:bus_2;
       anchors{top:ghaem_ansary_2.top;right:ghaem_ansary_2.left;topMargin:5}

   }
   Station{
       id:ansary ;s_width: 50 ; s_height: 50 ; s_text: "BUS2" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:ghaem_ansary_3.bottom ;right:ghaem_ansary_3.left;topMargin:-23;rightMargin:30}
   }
   Rectangle
   {
       id:ebnesina_tehranpars_1
       width:size_b ; height:73 ; color:bus_1;
       anchors{top:d27.bottom;right:eb.left;topMargin:13;rightMargin:-18}

   }
   Rectangle
   {
       id:ebnesina_tehranpars_2
       width:size_b ; height:73  ; color:bus_1;
      anchors{top:d27.bottom;right:eb.left;topMargin:13;rightMargin:-13}

   }
   Rectangle
   {
       id:ebnesina_tehranpars_3
       width:260 ; height:size_b  ; color:bus_1;
       anchors{top:ebnesina_tehranpars_2.bottom;left:ebnesina_tehranpars_2.right;topMargin:-7}

   }
   Rectangle
   {
       id:ebnesina_tehranpars_4
       width:260 ; height:size_b ; color:bus_1;
       anchors{top:ebnesina_tehranpars_2.bottom;left:ebnesina_tehranpars_2.right;topMargin:-2}

   }
   Station{
       id:tehranpars ;s_width: 50 ; s_height: 50 ; s_text: "BUS1" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:ebnesina_tehranpars_3.top ;left:ghaem_ansary_3.right;topMargin:-20;leftMargin:-40}
   }
   Rectangle
   {
       id:emam_ebnesina_1
       width:size_b ; height:118  ; color:bus_1;
      anchors{bottom:eb.bottom;right:eb.left;rightMargin:-13}

   }
   Rectangle
   {
       id:emam_ebnesina_2
       width:size_b ; height:118  ; color:bus_1;
       anchors{bottom:eb.bottom;right:eb.left;rightMargin:-18}

   }
   Rectangle
   {
       id:emam_ebnesina_3
       width:77 ; height:size_b  ; color:bus_1;
       anchors{top:emam_ebnesina_2.top;right:emam_ebnesina_2.left;}

   }
   Rectangle
   {
       id:emam_ebnesina_4
       width:77 ; height:size_b ; color:bus_1;
       anchors{top:emam_ebnesina_2.top;right:emam_ebnesina_2.left;topMargin: 5}

   }
   Rectangle
   {
       id:dowlat_emam_1
       width:145 ; height:size_b  ; color:bus_1;
       anchors{top:emam_ebnesina_3.top;right:em.left;}

   }
   Rectangle
   {
       id:dowlat_emam_2
       width:145 ; height:size_b ; color:bus_1;
       anchors{top:emam_ebnesina_4.top;right:em.left;}

   }
   Rectangle
   {
       id:dowlat_emam_3
       width:size_b ; height:90  ; color:bus_1;
       anchors{top:dowlat_emam_1.top;right:dowlat_emam_2.left;}

   }
   Rectangle
   {
       id:dowlat_emam_4
       width:size_b ; height:90 ; color:bus_1;
       anchors{top:dowlat_emam_1.top;right:dowlat_emam_2.left;rightMargin:-5}

   }
   Rectangle
   {
       id:dowlat_emam_5
       width:47 ; height:size_b  ; color:bus_1;
       anchors{top:dowlat_emam_3.bottom;right:dowlat_emam_3.left;rightMargin:-7}

   }
   Rectangle
   {
       id:dowlat_emam_6
       width:47 ; height:size_b ; color:bus_1;
       anchors{top:dowlat_emam_3.bottom;right:dowlat_emam_3.left;topMargin:-5;rightMargin:-7}

   }
   Rectangle
   {
       id:ferdowsi_dowlat_1
       width:size_b ; height:25  ; color:bus_1;
       anchors{top:dowlat.bottom;right:dowlat.left;topMargin:28;rightMargin:-13}

   }
   Rectangle
   {
       id:ferdowsi_dowlat_2
       width:size_b ; height:25 ; color:bus_1;
       anchors{top:dowlat.bottom;right:dowlat.left;topMargin:28;rightMargin:-18}

   }
   Rectangle
   {
       id:ferdowsi_dowlat_3
       width:117 ; height:size_b  ; color:bus_1;
       anchors{top:ferdowsi_dowlat_2.bottom;right:ferdowsi_dowlat_2.left;topMargin:-2}

   }
   Rectangle
   {
       id:ferdowsi_dowlat_4
       width:117 ; height:size_b ; color:bus_1;
       anchors{top:ferdowsi_dowlat_2.bottom;right:ferdowsi_dowlat_2.left;topMargin:-7;}

   }
   Rectangle
   {
       id:ferdowsi_dowlat_5
       width:size_b ; height:65  ; color:bus_1;
       anchors{bottom:ferdowsi_dowlat_3.top;right:ferdowsi_dowlat_3.left;rightMargin:-2}

   }
   Rectangle
   {
       id:ferdowsi_dowlat_6
       width:size_b ; height:65 ; color:bus_1;
       anchors{bottom:ferdowsi_dowlat_3.top;right:ferdowsi_dowlat_3.left;rightMargin:-7}

   }
   Rectangle
   {
       id:enghelab_ferdowsi_1
       width:200 ; height:size_b  ; color:bus_1;
       anchors{top:ferdowsi_dowlat_5.top;right:ferdowsi_dowlat_5.left;topMargin:-5;rightMargin:-5}

   }
   Rectangle
   {
       id:enghelab_ferdowsi_2
       width:200 ; height:size_b ; color:bus_1;
       anchors{top:ferdowsi_dowlat_5.top;right:ferdowsi_dowlat_5.left;rightMargin:-5}

   }
   Rectangle
   {
       id:lines_1
       width:size_b ; height:18  ; color:bus_1;
       anchors{top:ferdowsi.bottom;right:ferdowsi.left;topMargin:30;rightMargin:-13}

   }
   Rectangle
   {
       id:lines_2
       width:size_b ; height:18 ; color:bus_1;
       anchors{top:ferdowsi.bottom;right:ferdowsi.left;topMargin:30;rightMargin:-18}

   }
   Rectangle
   {
       id:lines_3
       width:size_b ; height:18  ; color:bus_1;
       anchors{top:meydan.bottom;right:meydan.left;topMargin:30;rightMargin:-13}

   }
   Rectangle
   {
       id:lines_4
       width:size_b ; height:18 ; color:bus_1;
       anchors{top:meydan.bottom;right:meydan.left;topMargin:30;rightMargin:-18}

   }
   Rectangle
   {
       id:lines_5
       width:size_b ; height:18  ; color:bus_1;
       anchors{top:moein.bottom;right:moein.left;topMargin:30;rightMargin:-13}

   }
   Rectangle
   {
       id:lines_6
       width:size_b ; height:18 ; color:bus_1;
       anchors{top:moein.bottom;right:moein.left;topMargin:30;rightMargin:-18}

   }
   Rectangle
   {
       id:lines_7
       width:size_b ; height:18  ; color:bus_1;
       anchors{top:azadi.bottom;right:azadi.left;topMargin:30;rightMargin:-13}

   }
   Rectangle
   {
       id:lines_8
       width:size_b ; height:18 ; color:bus_1;
       anchors{top:azadi.bottom;right:azadi.left;topMargin:30;rightMargin:-18}

   }
   Rectangle
   {
       id:moein_enghelab_1
       width:237 ; height:size_b  ; color:bus_1;
       anchors{top:enghelab_ferdowsi_1.top;right:enghelab_ferdowsi_1.left;rightMargin:-5}

   }
   Rectangle
   {
       id:moein_enghelab_2
       width:237 ; height:size_b ; color:bus_1;
       anchors{top:enghelab_ferdowsi_2.top;right:enghelab_ferdowsi_2.left;rightMargin:-5}

   }
   Rectangle
   {
       id:azadi_moein_1
       width:65 ; height:size_b  ; color:bus_1;
       anchors{top:moein_enghelab_1.top;right:moein_enghelab_1.left;rightMargin:-5}

   }
   Rectangle
   {
       id:azadi_moein_2
       width:65 ; height:size_b ; color:bus_1;
       anchors{top:moein_enghelab_2.top;right:moein_enghelab_2.left;rightMargin:-5}

   }
   Rectangle
   {
       id:bimeh_azadi_1
       width:196 ; height:size_b  ; color:bus_1;
       anchors{top:azadi.top;right:azadi.left;topMargin:11}

   }
   Rectangle
   {
       id:bimeh_azadi_2
       width:196 ; height:size_b ; color:bus_1;
       anchors{top:azadi.top;right:azadi.left;topMargin:16}
   }
   Station{
       id:bimeh ;s_width: 50 ; s_height: 50 ; s_text: "BUS2" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:bimeh_azadi_1.top ;right:bimeh_azadi_1.left;topMargin:-22;leftMargin:-40}
   }
   Rectangle
   {
       id:sadr_tajrish_1
       width:140 ; height:size_b  ; color:bus_3;
       anchors{top:tajrish.top;right:tajrish.left;topMargin:22}

   }
   Rectangle
   {
       id:sadr_tajrish_2
       width:140 ; height:size_b ; color:bus_3;
       anchors{top:tajrish.top;right:tajrish.left;topMargin:27}
   }
   Rectangle
   {
       id:sadr_tajrish_3
       width:size_b ; height:80  ; color:bus_3;
       anchors{top:sadr_tajrish_1.bottom;right:sadr_tajrish_1.left;rightMargin:-2}

   }
   Rectangle
   {
       id:sadr_tajrish_4
       width:size_b ; height:80 ; color:bus_3;
       anchors{top:sadr_tajrish_1.bottom;right:sadr_tajrish_1.left;rightMargin:-7}

   }
   Station{
       id:sadr ;s_width: 50 ; s_height: 50 ; s_text: "BUS3" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:sadr_tajrish_3.bottom ;right:sadr_tajrish_3.left;rightMargin:20}
   }
   Rectangle
   {
       id:tajrish_mirdamad_1
       width:30 ; height:size_b  ; color:bus_3;
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
       width:size_b ; height:222  ; color:bus_3;
       anchors{top:tajrish_mirdamad_1.bottom;right:tajrish_mirdamad_1.left;rightMargin:-25}

   }
   Rectangle
   {
       id:tajrish_mirdamad_4
       width:size_b ; height:222 ; color:bus_3;
       anchors{top:tajrish_mirdamad_1.bottom;right:tajrish_mirdamad_1.left;rightMargin:-30}

   }
   Rectangle
   {
       id:tajrish_mirdamad_5
       width:41 ; height:size_b  ; color:bus_3;
       anchors{top:tajrish_mirdamad_3.bottom;right:tajrish_mirdamad_3.left;topMargin:-2;rightMargin:-5}

   }
   Rectangle
   {
       id:tajrish_mirdamad_6
       width:41 ; height:size_b ; color:bus_3;
       anchors{top:tajrish_mirdamad_3.bottom;right:tajrish_mirdamad_3.left;topMargin:-7;rightMargin:-5}
   }
   Rectangle
   {
       id:mirdamad_v_1
       width:295 ; height:size_b  ; color:bus_3;
       anchors{top:tajrish_mirdamad_5.top;right:tajrish_mirdamad_5.left;rightMargin:30}

   }
   Rectangle
   {
       id:mirdamad_v_2
       width:295 ; height:size_b ; color:bus_3;
       anchors{top:tajrish_mirdamad_6.top;right:tajrish_mirdamad_6.left;rightMargin:30}
   }
   Rectangle
   {
       id:mirdamad_v_3
       width:size_b ; height:245  ; color:bus_3;
       anchors{top:mirdamad_v_1.bottom;right:mirdamad_v_1.left;topMargin:-5;rightMargin:-2}

   }
   Rectangle
   {
       id:mirdamad_v_4
      width:size_b ; height:245  ; color:bus_3;
       anchors{top:mirdamad_v_1.bottom;right:mirdamad_v_1.left;topMargin:-5;rightMargin:-7}
   }
   Rectangle
   {
       id:mirdamad_v_5
       width:98 ; height:size_b  ; color:bus_3;
       anchors{top:mirdamad_v_3.bottom;left:mirdamad_v_3.right;topMargin:-2}

   }
   Rectangle
   {
       id:mirdamad_v_6
       width:98 ; height:size_b ; color:bus_3;
       anchors{top:mirdamad_v_3.bottom;left:mirdamad_v_3.right;topMargin:-7}
   }
   Rectangle
   {
       id:v_rahahan_1
       width:30 ; height:size_b  ; color:bus_3;
       anchors{top:mirdamad_v_5.top;left:v.right;leftMargin:30}

   }
   Rectangle
   {
       id:v_rahahan_2
       width:30 ; height:size_b ; color:bus_3;
       anchors{top:mirdamad_v_6.top;left:v.right;leftMargin:30}
   }
   Rectangle
   {
       id:v_rahahan_3
       width:size_b ; height:281  ; color:bus_3;
       anchors{top:v_rahahan_1.bottom;left:v_rahahan_1.right;topMargin:-5;leftMargin:-7}

   }
   Rectangle
   {
       id:v_rahahan_4
      width:size_b ; height:281  ; color:bus_3;
       anchors{top:v_rahahan_1.bottom;left:v_rahahan_1.right;topMargin:-5;leftMargin:-2}
   }
   Rectangle
   {
       id:v_rahahan_5
       width:32 ; height:size_b  ; color:bus_3;
       anchors{top:v_rahahan_3.bottom;right:v_rahahan_3.left;topMargin:-2;rightMargin:-5}

   }
   Rectangle
   {
       id:v_rahahan_6
       width:32 ; height:size_b ; color:bus_3;
       anchors{top:v_rahahan_3.bottom;right:v_rahahan_3.left;topMargin:-7;rightMargin:-5}
   }
   Rectangle
   {
       id:rahahan_shahrak_1
       width:130 ; height:size_b  ; color:bus_3;
       anchors{top:v_rahahan_5.top;right:rahahan.left;}

   }
   Rectangle
   {
       id:rahahan_shahrak_2
       width:130 ; height:size_b ; color:bus_3;
       anchors{top:v_rahahan_6.top;right:rahahan.left;}
   }
   Rectangle
   {
       id:rahahan_shahrak_3
       width:size_b ; height:190  ; color:bus_3;
       anchors{top:rahahan_shahrak_1.bottom;right:rahahan_shahrak_2.left;topMargin:-5;rightMargin:-2}

   }
   Rectangle
   {
       id:rahahan_shahrak_4
      width:size_b ; height:190  ; color:bus_3;
       anchors{top:rahahan_shahrak_1.bottom;right:rahahan_shahrak_2.left;topMargin:-5;rightMargin:-7}
   }
   Station{
       id:shahrak ;s_width: 50 ; s_height: 50 ; s_text: "BUS3" ; s_color: "#00ff55" ; s_boarder_width: 0
       anchors{top:rahahan_shahrak_3.bottom ;right:rahahan_shahrak_3.left;rightMargin:20}
   }
   //name

       Text{text:"Kahrizak"; anchors{top:kahrizak.bottom ; left:kahrizak.left ; topMargin:54}}



       Text{text:"Shahrak-e Shari'ati";
           anchors{top:shahrak.bottom ; left:shahrak.left ; topMargin:53 ; leftMargin:-27}}



       Text{
           text:"Azadegan";
         anchors{top:azadegan.bottom ; left:azadegan.left ; topMargin:54;}
       }



       Text{
           text:"Payaneh Javanmard";
        anchors{top:javanmard.bottom ; left:javanmard.left ; topMargin:54 ; leftMargin:-25}
       }


        Text{
          text:"Haram-e Hazrat-e Abdolazim";
          anchors{top:h.bottom ; left:h.left ; topMargin:52;leftMargin:-55}
       }
    Text{text:"Tehran Pars";anchors{top:tehranpars.bottom ; left:tehranpars.right ; topMargin:17 ; leftMargin:70}}
    Text{text:"Shahid Kolahdouz";anchors{top:k.bottom ; left:k.right ; topMargin:17 ; leftMargin:70}}
    Text{text:"Gha'em";anchors{top:ghaem.bottom ; left:ghaem.right ; topMargin:17 ; leftMargin:70}}
    Text{text:"Khajeh Abdollah-e Ansari";anchors{bottom:ansary.top ; left:ansary.right;bottomMargin:10;leftMargin:-50}}
    Text{text:"Tajrish";anchors{top:tajrish.top ; left:tajrish.right;leftMargin:-48}}
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
    Text{text:"Meydan-e Enghelab-e Eslami";anchors{top:meydan.bottom ; right:meydan.left;topMargin:55 ;rightMargin:-100}}
    Text{text:"Teatr-e Shahr";anchors{top:teatr.top ; right:teatr.left;topMargin:-20 ;rightMargin:-5}}
    Text{text:"Ferdowsi";anchors{top:ferdowsi.top ; right:ferdowsi.left;topMargin:-20 ;rightMargin:-45}}
    Text{text:"Darvazeh Shemiran";anchors{top:shemiran.top ; right:shemiran.left;topMargin:-20 ;rightMargin:-100}}
    Text{text:"Ebn-e Sina";anchors{top:eb.bottom ; right:eb.left;topMargin:25;}}
    Text{text:"Pirouzi";anchors{top:pirouzi.top ; right:pirouzi.left;topMargin:-20 ;rightMargin:-8}}
    Text{text:"Nabard";anchors{top:nabard.top ; right:nabard.left;topMargin:-20 ;rightMargin:-36}}
    Text{text:"Nirou Havaei";anchors{top:nirou.top ; right:nirou.left;topMargin:-20 ;rightMargin:-65}}
    Text{text:"Yadegar-e Emam";anchors{top:yadegar.top ; right:yadegar.left;topMargin:-20 ;rightMargin:-65}}
    Text{text:"Boostan-e laleh";anchors{top:boostan.top ; right:boostan.left;topMargin:-20 ;rightMargin:-5}}
    Text{text:"Shahid Rezaei";anchors{top:r.top ; right:r.left;topMargin:30 ;}}
    Text{text:"Meydan-e Shohada";anchors{top:sh.top ; right:sh.left;topMargin:30}}
    Text{text:"Emam Hossein";anchors{top:em.top ; left:em.right ;topMargin:-20 ; leftMargin:25}}
    Text{text:"Sohrevardi";anchors{top:sohrevardi.bottom ; left:sohrevardi.right ;topMargin:40 ; leftMargin:-20}}
    Text{text:"Shahid Ghodousi";anchors{top:gh.top ; left:gh.right ; topMargin:-8 ; leftMargin:-100}}
    Text{text:"Shahid Zeynoddin";anchors{top:z.bottom ; left:z.right ;topMargin:40 ; leftMargin:-40}}
    Text{text:"Aghdasiyeh";anchors{top:aghdasiyeh.bottom ; left:aghdasiyeh.right ;topMargin:40 ; leftMargin:-22}}
    Text{text:"Merza-ye Shirazi";anchors{top:shirazi.top ; left:shirazi.right ; topMargin:-25 ; leftMargin:-70}}
    Text{text:"Meydan-e Jahad";anchors{top:jahad.top ; left:jahad.right ; topMargin:10 ; leftMargin:-105}}
    Text{text:"Meydan-e Hazrat-e ValiAsr";anchors{top:v.top ; left:v.right ; topMargin:-10 ; leftMargin:30 }}
    Text{text:"Moniriyeh";anchors{top:moniriyeh.top ; right:moniriyeh.left ; topMargin:70 ; rightMargin:25}}
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
    Text{text:"Darvazeh Dowlat";anchors{top:dowlat.top ; left:dowlat.right ; topMargin:30 ; leftMargin:23}}
    Text{text:"Panzdah-e Khordad";anchors{top:khordad.top ; right:khordad.left ; topMargin:7 ; rightMargin:10}}
    Text{text:"Shoush";anchors{top:shoush.top ; right:shoush.left ; topMargin:6 ; rightMargin:10}}
    Text{text:"Jonoub Terminal";anchors{top:jonoub.top ; right:jonoub.left ; topMargin:7 ; rightMargin:10}}
    Text{text:"Shahr-e Rey";anchors{top:rey.top ; right:rey.left ; topMargin:7 ; rightMargin:10}}



























 }

}
