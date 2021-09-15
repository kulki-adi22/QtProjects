import QtQuick 2.0
Item{
    id:page1
    signal nextBtn()
    signal prevBtn()
    width: parent.width
    height: parent.height
    Rectangle {
        height: parent.height
        width: parent.width
        color: "blue"
        Text {
            id: text1
            text: "Page1"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 20
        }
    }
    Button{
        btnText: "Previous"
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Prev btn clicked")
                prevBtn();
            }
        }
    }
    Button{
        btnText: "Next"
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Next btn clicked")
                nextBtn();
            }
        }
    }
}
