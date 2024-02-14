import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQml 2.3


Item
{
    id:root
    property color s_color: "#dcdcdc"
    property int s_width :  30
    property int s_height : 30
    property color s_bordercolor: "#a9a9a9"
    property int s_boarder_width: 3
    property string s_text
    property color s_color_text
    signal myclick()
    Rectangle
    {
       id:mystion
       width:  s_width
       height: s_height
       color:  s_color
       border.width: s_boarder_width
       border.color: s_bordercolor
       radius: 180
       Text
       {
           anchors.centerIn: parent
           text:s_text
           color:s_color_text
       }
       MouseArea
       {
           anchors.fill:parent
           onClicked : myclick()
       }
    }


}
