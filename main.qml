import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
 import QtQuick.Dialogs 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
//import QtQuick.Controls.Material 2.0
import "core"
import "dashboard"
ApplicationWindow {
    id:rootWindow
    visible: true
    width: 1024
    height: 600
    property color buttonBorderColor: "#7A8182"
    property color buttonFillColor: "#61BDCACD"
    property int screenwidth: 1024
    property int screenHeight: 600
    property int silderBarwidth: 150
    property int tabBarheight: 80


//    title: qsTr("Hello World")

/*********************************************************************
  * @ 底部菜单栏
  * @ 首页
  * @ 模式
  * @ 设置
  ********************************************************************/
    footer: TabBar {
        id: tabBar
        width: 1024 - silderBarwidth
        height: tabBarheight;
        x:silderBarwidth
        y:0
        currentIndex: swipeView.currentIndex

        TabButton {
            height: 80
            text: qsTr("首页")
            font.bold: true
            font.pixelSize:parent.height/2
            font.weight: Font.DemiBold
            font.family:qsTr("AR PL UKai CN")
            Image {
                id: home_01
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: -4
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset:-80
                source: "qrc:/ico/home.svg"
                sourceSize.height:48
                sourceSize.width: 48
            }
        }
        TabButton {
            height: 80
            text: qsTr("模式")
            font.bold: true
            font.pixelSize:parent.height/2
            font.weight: Font.DemiBold
            font.family:qsTr("AR PL UKai CN")
            Image {
                id: setting_02
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: -4
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset:-80
                source: "qrc:/ico/mode.png"
                sourceSize.height:48
                sourceSize.width: 48
            }
        }
        TabButton {
            height: 80
            text: qsTr("设置")
            font.bold: true
            font.pixelSize:parent.height/2
            font.weight: Font.DemiBold
            font.family:qsTr("AR PL UKai CN")
            Image {
                id: mode_03
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: -4
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset:-80
                source: "qrc:/ico/settings.svg"
                sourceSize.height:48
                sourceSize.width: 48
            }
        }
    }
    /*********************************************************************
      *
      *
      ********************************************************************/
StackView
{
    id:stackViewId
    visible:  true
    width: parent.width
    height: parent.height


    /*********************************************************************
      *@ System power off button
      *@ click to power off
      *@ click to power on
      ********************************************************************/
        SiderBar {
            id: sideBar
            anchors.fill: parent

        }
    Rectangle{
        id:mainWindow
        visible: true
        color:"#191919"
        width: parent.width - silderBarwidth
        height: parent.height                //??????
//        height: 520
        x:silderBarwidth
        y:0

        SwipeView {
            id: swipeView
            anchors.fill: parent
            currentIndex: tabBar.currentIndex
            width: parent.width
//            height: 520
            height: parent.height
            anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0                //??????



            Page1{
                id:homePage
}

            Page {
                id:modePage
                Label {
                    text: qsTr("模式 page")
                    anchors.centerIn: parent
                }

            }
            Page {
                id:settingsPage
                Label {
                    text: qsTr("设置 page")
                    anchors.centerIn: parent
                }
            }
        }


//        Button {
//            id:childlock
//            width:  parent.width/6
//            height: parent.height/6
//            anchors.right: closeButton.left
//            buttonColor: buttonFillColor
//            borderColor: buttonBorderColor
//            label:"  童锁"
//            labelSize:33
//            label_family: qsTr("AR PL UKai CN")
//            color:"#6A6D6A"
//            onButtonClick: console.log("Child lock clicked")
//            gradient: Gradient {
//                GradientStop { position: 0.0; color: "#8C8F8C" }
//                GradientStop { position: 0.17; color: "#6A6D6A" }
//                GradientStop { position: 0.77; color: "#3F3F3F" }
//                GradientStop { position: 1.0; color: "#6A6D6A" }
//            }
//            Image {
//                id: childlockimage
//                source: "qrc:/ico/childlock.svg"
//                anchors.verticalCenter: parent.verticalCenter
////                anchors.verticalCenterOffset: -4
//                anchors.horizontalCenter: parent.horizontalCenter
//                anchors.horizontalCenterOffset:-45
//                sourceSize.height:parent.height/1.8
//                sourceSize.width: parent.width/1.8
//            }
//        }
//        Button {
//            id:closeButton
//            width:  parent.width/6
//            height: parent.height/6
//            anchors.right: parent.right
//            buttonColor: buttonFillColor
//            borderColor: buttonBorderColor
//            label:"  开关"
////            text.family:qsTr("AR PL UKai CN")
//            labelSize:33
//            label_family: qsTr("AR PL UKai CN")
//            color:"#6A6D6A"
//            onButtonClick: console.log("Power Off clicked")
//            gradient: Gradient {
//                GradientStop { position: 0.0; color: "#8C8F8C" }
//                GradientStop { position: 0.17; color: "#6A6D6A" }
//                GradientStop { position: 0.77; color: "#3F3F3F" }
//                GradientStop { position: 1.0; color: "#6A6D6A" }
//            }
//            Image {
//                id: poweroffimage
//                source: "qrc:/ico/power-off.svg"
//                anchors.verticalCenter: parent.verticalCenter
////                anchors.verticalCenterOffset: -4
//                anchors.horizontalCenter: parent.horizontalCenter
//                anchors.horizontalCenterOffset:-45
//                sourceSize.height:parent.height/1.8
//                sourceSize.width: parent.width/1.8
//            }
//        }
    }
    }
}
