import QtQuick 2.0

Image {
    id: antid
    width : 30
    height :30
    transformOrigin: Item.Center

    property string img
    property bool moveileft : false
    property bool isMovingleft :false;
    property int speed : 4
    property int range : 20

    AnimatedSprite {
        id:sprite_right
        transformOrigin: Item.TopLeft

        visible: isMovingleft
        anchors.centerIn: parent
        anchors.fill: parent
        source : img
        frameWidth: 64
        frameHeight: 64
        frameCount: 4
        frameX : 0
        frameY : 192
        frameDuration: 200
        loops: Animation.Infinite
        running: isMovingleft
        interpolate:false;
    }

    Timer {
        interval: 10;
        running: true;
        repeat: true

        onTriggered: {
            parent.x-=speed;
            if (parent.x <game.frog[1].x+range && parent.x >game.frog[1].x-range  && parent.y <game.frog[1].y+range && parent.y >game.frog[1].y-range)
            {
                game.frog[1].destroy()
            }
            if(parent.x ===6)
            {
                game.textscores1 +=1
            }
        }
    }
}

