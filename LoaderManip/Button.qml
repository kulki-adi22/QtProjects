import QtQuick 2.0

Rectangle{
    property string btnText
    property var mouseAreaBtn:mArea
    color: "yellow"
    width: 100
    height: 30
    Text {
        anchors.centerIn: parent
        id: t1
        text: btnText
    }
    MouseArea{
        id:mArea
        anchors.fill: parent
    }
}

