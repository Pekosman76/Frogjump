import QtQuick 2.0

Rectangle {

    width: parent.width
    height: parent.height
    color: "#f7925f"
    focus  : true

    property var frogcomponent :Qt.createComponent("Frog.qml")
    property var antcomponent :Qt.createComponent("Ant.qml")

    property var frog :[]
    property var ant :[]

    property int i :1
    property int textscores1 : 0

    property int intervalant : 4500

    property bool finish : false

    Component.onCompleted: {
        frog[1]=frogcomponent.createObject(parent, {"x":48, "y": game.height-48, "img": "qrc:/FROG/frog.png", "isMovingRight" : true});
    }

    Keys.onPressed: {

        if (event.key === Qt.Key_Space) {
            if (event.isAutoRepeat) return;
            else
            {
                if (frog[1].jumpup === false && frog[1].jumpdown === false)
                frog[1].jumpup = true
            }
        }
    }

    Timer {
        interval: intervalant;
        running: true;
        repeat: true

        onTriggered: {

            ant[i]=antcomponent.createObject(parent, {"x":game.width-30, "y": game.height-30, "img": "qrc:/FOURMIE/ant.png", "isMovingleft" : true});
            i++;
        }
    }

    Timer {
        interval: 5000;
        running: true;
        repeat: true

        onTriggered: {

            intervalant -=200
        }
    }

    Score{

        anchors.top : parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        scorep1: textscores1.toString()
    }
}
