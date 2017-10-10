import QtQuick 2.4

Rectangle{
    id:topbar
    property color barColor: "transparent"
    property color angleColor: "transparent"
    width: 150
    height: 50
    color: "#191919"

    Rectangle{
        id:basicRec
        x: -22
        y: -34
        width: 55
        height: 80
        rotation: 45
        clip: true
        color: angleColor

    }

    Rectangle{
        id:angleRec
        x: 114
        y: -37
        width: 55
        height: 80
        color: angleColor
        rotation: 135
    }

}
