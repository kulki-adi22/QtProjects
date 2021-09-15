 import QtQuick 2.0
Item {
    id:manager
    property int val:0
    width: parent.width
    height: parent.height
    property int count: plist.getLength()
    property var headArray: plist.getStrList()
    Loader{
        id:load
        width: parent.width
        height: parent.height
        
        source: headArray[0]
        
    }
    Connections{
        ignoreUnknownSignals: true
        target:load.item
        function onNextBtn()
        {

            val=plist.nextButton(val)
            load.source=headArray[val]
        }
        function onPrevBtn()
        {
            val=plist.prevButton(val)
            load.source=headArray[val]
        }
    }
}
