import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
Rectangle {
    Material.theme: Material.Dark
    Material.accent: Material.DeepOrange
    width: 1024
    height: 600
    color: "#191919"
    clip: true
    property alias title: label.text

    Label{
        id:label
        x:8
        y:18
        text:qsTr("")
        font.pixelSize: 22
        font.bold: true
        font.weight: Font.DemiBold
        font.family:qsTr("AR PL UKai CN")
    }
    Rectangle {
        id: rectangle1
        x: 865
        y: -31
        width: 400
        height: 200
        color: "#3a3a3a"
        rotation: 45
    }
}
