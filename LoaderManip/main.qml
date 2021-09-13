import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Manager{
        anchors.fill: parent
    }
}
