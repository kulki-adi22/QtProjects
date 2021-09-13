import QtQuick 2.0
Item{
    signal nextBtn()
    signal prevBtn()
    width: parent.width
    height: parent.height
    Rectangle {
        height: parent.height
        width: parent.width
        color: "#fc5e03"
        Text {
            id: text1
            text: "Page10"
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
                console.log("Prev btn clicked")
                nextBtn();
            }
        }
    }
}
