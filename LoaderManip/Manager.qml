import QtQuick 2.0

Item {
    id:manager
    property int val:0
    signal firstNext()
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
            console.log(val)
            if(val==headArray.length-1){
                console.log("1 "+val)
                val=0
                load.source=headArray[0]
                val=0
            }
            else{
                val++;
                load.source=headArray[val]
            }
        }
        function onPrevBtn()
        {
            console.log(val)
            if(val==0){
                val=headArray.length-1
                console.log("1 "+val)
                load.source=headArray[val]
                console.log("1 "+val)
            }
            else{
                val--;
                load.source=headArray[val]
            }
        }
    }
}
