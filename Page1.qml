import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
 import QtQuick.Dialogs 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import "dashboard"



//Item {

//width: 874
//height: 520
//x:150

//Rectangle{
//       id:waitingRec
//       z:100
//       visible:true
//       anchors.fill: parent
//       color:"#50000000"
//       Component.onCompleted: {
//           animation.start()
//       }
//       Image{
//           id:rotation
//           anchors.centerIn: parent
//           width:80
//           height:80
//           source:"qrc:/ico/tianjinyihao.png"
//           RotationAnimation on rotation {
//                  id: animation
//                  loops: Animation.Infinite
//                  from: 0
//                  to: 360
//              }
//       }
//       Text{
//           anchors.top:rotation.bottom
//           anchors.horizontalCenter: parent.horizontalCenter
//           anchors.topMargin: 15
//           text:qsTr("Uninstalling...")
//           color:"black"
//           font.family: qsTr("AR PL UKai CN")
//           font.pixelSize: 35
//           style: Text.Outline
//           styleColor:"white"
//       }
//   }
//}








Page1Form {
id:page1form

ValueSource{

    id:page1valuesource
}




Item{

    id:temperatureStyle
    width: 150*3
    height: 75*3

    //temperature meter
    CircularGauge{
        value: page1valuesource.temperature
        maximumValue: 1
        width:parent.width
        height: parent.height * 0.7


        style: IconGaugeStyle {
            id: tempGaugeStyle

            icon: "qrc:/ico/temperature.png"
            maxWarningColor: Qt.rgba(0.5, 0, 0, 1)
            minWarningColor: "#03a4f4" //Qt.rgba(3, 162, 244, 200)

            tickmarkLabel: Text {
                color: "white"
                visible: styleData.value === 0 || styleData.value === 1
                font.pixelSize: tempGaugeStyle.toPixels(0.225)
                text: styleData.value === 0 ? "C" : (styleData.value === 1 ? "H" : "")
            }
           dbValueText: "温度:" + "    "
           dbValueUnite: "℃"
           dbValueTextColor: Qt.rgba(255,255,255,255)
        }


    }


    CircularGauge{
        value: page1valuesource.kph
        maximumValue: 1
        width:parent.width
        height: parent.height * 0.7
        x: 300
        style: IconGaugeStyle {
            id: thumidityGaugeStyle

            icon: "qrc:/ico/CO2.svg"
            maxWarningColor: "#03a4f4" //Qt.rgba(3, 162, 244, 200)
            minWarningColor: Qt.rgba(0.5, 0, 0, 1)

            tickmarkLabel: Text {
                color: "white"
                visible: styleData.value === 20 || styleData.value === 100
                font.pixelSize: thumidityGaugeStyle.toPixels(0.225)
                text: styleData.value === 20 ? "L" : (styleData.value === 100 ? "H" : "")
            }
            dbValueText: "二氧化碳:" + "            "

            dbValueUnite:"ppm"
            dbValueTextColor: Qt.rgba(255,255,255,255)
        }
    }


}





//    button1.onClicked: {
//        console.log("Button Pressed. Entered text: " + textField1.text);
//    }
}
