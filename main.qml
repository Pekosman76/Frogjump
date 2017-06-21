import QtQuick 2.3
import QtQuick.Controls 1.2

ApplicationWindow {
    visible: true
    width: 640
    height: 100
    title: qsTr("Frogjump")

    Game{
        id : game
        width: 640
        height: 100

    }
}

