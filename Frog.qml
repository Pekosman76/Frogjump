import QtQuick 2.0

Image {
    id: frogid
    width : 48
    height :48
    transformOrigin: Item.Center

    property string img
    property bool jumpup : false
    property bool jumpdown : false
    property bool moveinputup: false
    property bool isMovingRight :false;
    property int speed : 3

    AnimatedSprite {
        id:sprite_right
        transformOrigin: Item.TopLeft

        visible: isMovingRight
        anchors.centerIn: parent
        anchors.fill: parent
        source : img
        frameWidth: 48
        frameHeight: 48
        frameCount: 12
        frameX : 0
        frameY : 96
        frameDuration: 200
        loops: Animation.Infinite
        running: isMovingRight
        interpolate:false;
    }

    Timer {
        interval: 5;
        running: jumpup;
        repeat: true

        onTriggered: {

            parent.y-=speed;
            if (parent.y <= -20)
            {
                jumpdown = true
                jumpup = false
            }
        }
    }
    Timer {
        interval: 5;
        running: jumpdown;
        repeat: true

        onTriggered: {

            parent.y+=speed;
            if (parent.y >= 52)
            {
                jumpdown = false
            }
        }
    }
}

