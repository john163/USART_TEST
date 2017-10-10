import QtQuick 2.4
import QtQuick.Controls 2.0

import "clock"
import "core"

import QtQuick.Layouts 1.0

PageBackground {
    id: pageBackground
    x: 0
    y: 0
    width: 150
    height: 600
    color: "#191919"
    radius: 1
    z: 0
    rotation: 0
    title: ""
    border.width: 1

    property double temperatureValue: 0.0

    Button {
        id: childLockBTN
        x: 0
        y: 357
        width: 150
        height: 80
        color: "#191919"
        radius: 2
        buttonColor: qsTr("#add8e6")
        anchors.bottom: powerSwithBTN.top
        anchors.bottomMargin: 0
        label: "  童锁"
        labelSize: 33
        label_family: qsTr("AR PL UKai CN")
        gradient: Gradient {
            GradientStop {
                position: 0.0
                color: "#191919"
            }
            GradientStop {
                position: 0.17
                color: "#6A6D6A"
            }
            GradientStop {
                position: 0.77
                color: "#3F3F3F"
            }
            GradientStop {
                position: 1.0
                color: "#191919"
            }
        }
        Image {
            id: childlockfimage
            source: "qrc:/ico/childlock.svg"
            anchors.verticalCenter: parent.verticalCenter
            //                anchors.verticalCenterOffset: -4
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -45
            sourceSize.height: parent.height / 1.8
            sourceSize.width: parent.width / 1.8
        }
    }

    Button {
        id: powerSwithBTN
        x: 0
        y: 435
        height: 80
        color: "#191919"
        radius: 2
        label_family: qsTr("AR PL UKai CN")
        label: qsTr("  开关")
        labelSize: 33
        //        labelBold: true
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        gradient: Gradient {
            GradientStop {
                position: 0.0
                color: "#191919"
            }
            GradientStop {
                position: 0.17
                color: "#6A6D6A"
            }
            GradientStop {
                position: 0.77
                color: "#3F3F3F"
            }
            GradientStop {
                position: 1.0
                color: "#191919"
            }
        }
        Image {
            id: poweroffimage
            source: "qrc:/ico/power-off.svg"
            anchors.verticalCenter: parent.verticalCenter
            //                anchors.verticalCenterOffset: -4
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -45
            sourceSize.height: parent.height / 1.8
            sourceSize.width: parent.width / 1.8
        }
    }

    //    RowLayout {
    //    }
    DigiClock {
        id: digiClock
        x: 0
        y: 194
        width: 150
        height: 50
    }

    Button {
        id: temper
        x: 0
        y: 347
        width: 150
        height: 80
        color: "#191919"
        radius: 2
        label_family: qsTr("AR PL UKai CN")
        labelSize: 33
        Image {
            id: childlockfimage1
            sourceSize.height: parent.height / 1.8
            source: "qrc:/ico/temperature.png"
            sourceSize.width: parent.width / 1.8
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: -45
            anchors.horizontalCenter: parent.horizontalCenter
        }
        label: "   " + temperatureValue + "℃"
        anchors.bottom: childLockBTN.top
        anchors.bottomMargin: 0
        buttonColor: qsTr("#add8e6")
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#191919"
            }

            GradientStop {
                position: 0.17
                color: "#6a6d6a"
            }

            GradientStop {
                position: 0.77
                color: "#3f3f3f"
            }

            GradientStop {
                position: 1
                color: "#191919"
            }
        }
    }
}
