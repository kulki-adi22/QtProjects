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
    Loader{
        id:load2
        width: parent.width
        height: parent.height
    }
    Connections{
        ignoreUnknownSignals: true
        target:load.item
        function onNextBtn()
        {
            plist.loadNext()
        }
        function onPrevBtn()
        {
            plist.loadPrev()
        }
    }
    Connections{
        ignoreUnknownSignals: true
        target: plist
        function onGoNext(fnext){
            load2.source=load.source
            load.source=fnext
            anim1.start();
        }
        function onGoPrev(fprev) {
            load2.source=load.source
            load.source=fprev
            anim2.start()
        }
    }
    ParallelAnimation{
        id:anim1
        NumberAnimation {
            target: load
            property: "x"
            duration: 200
            from: manager.width
            to:0
        }
        NumberAnimation {
            target: load2
            property: "x"
            duration: 200
            from: 0
            to:-manager.width
        }
    }
    ParallelAnimation{
        id:anim2
        NumberAnimation {
            target: load
            property: "x"
            duration: 200
            from: -manager.width
            to: 0
        }
        NumberAnimation {
            target: load2
            property: "x"
            duration: 200
            from: 0
            to: manager.width
        }
    }
}
