import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:root
    property int temp: 0
    Image {
        id: bghome
        source: "img.png"
        anchors.fill: parent
    }
    Image {
        id: icon
        source: "icon.png"
        anchors.centerIn: parent
        MouseArea{
            anchors.fill: parent
            onClicked: {
                grid.visible=true
                icon.visible=false
                bghome.visible=false
            }
        }
    }
    function geturl(index)
    {
        return imgArray[index]
    }
    property var imgArray:[
        "data:image/png;base64,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",
        "icon2.png",
        "icon3.png",
        "icon4.png",
        "icon5.png",
        "icon6.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png",
        "icon1.png"
    ]
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: "black"
    GridView{
        visible: false
        id:grid
        y:50
        width: root.width/1.2
        height: root.height/1.5
        anchors.centerIn: parent
        model: imgArray.length
        delegate: del1
        interactive: true
        clip: true
        cellWidth: 150
        cellHeight: 100
    }
    Image {
        id:zoomImg
        source: imgArray[temp]
        width: root.width
        visible: false
        height: root.height
        anchors.centerIn: parent
        MouseArea{
            anchors.fill: parent
            onClicked: {
                //zoomImg.visible=false
                grid.visible=true
                anim2.start()
            }
        }
    }
    ParallelAnimation{
        id:anim
        running: false
        NumberAnimation {
            target: zoomImg
            property: "width"
            duration: 200
            from: 0
            to:root.width
        }
        NumberAnimation {
            target: zoomImg
            property: "height"
            duration: 200
            from: 0
            to:root.height
        }
    }
    ParallelAnimation{
        id:anim2
        running: false
        NumberAnimation {
            target: zoomImg
            property: "width"
            duration: 200
            from: root.width
            to:0
        }
        NumberAnimation {
            target: zoomImg
            property: "height"
            duration: 200
            from: root.height
            to:0
        }
    }
    Component{
        id:del1
        Rectangle{
            id:rect1
            Row{
                spacing: 10
                Image {
                    id: i1
                    width: 120
                    height: 90
                    source: imgArray[index]
                    MouseArea{
                        acceptedButtons: Qt.RightButton|Qt.LeftButton
                        anchors.fill: parent
                        onClicked: {
                            temp=index;
                            zoomImg.visible=true
                            grid.visible=false
                            anim.start()
                        }
                    }
                }
            }
        }
    }
}
