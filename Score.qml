import QtQuick 2.0

Rectangle{
    width: 150
    height: 20
    color : "#D8D8D8"
    property string scorep1

    Row{
        anchors.centerIn: parent
        spacing: 5
        Text{
            color: "#07000d"
            text: "FrogSwagMan "
        }
        Text{
            color: "#07000d"
            text: scorep1
        }
    }
}
