import QtQuick 2.0
Item{
    signal nextBtn()
    signal prevBtn()
    width: parent.width
    height: parent.height
    Rectangle {
        height: parent.height
        width: parent.width
        color: "purple"
        Text {
            id: text1
            text: "Page5"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 20
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
}
