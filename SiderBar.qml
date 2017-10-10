import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
 import QtQuick.Dialogs 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtGraphicalEffects 1.0
Item {

//    anchors.fill: parent
    SiderBarForm {
    }

        Image {
            id: logImagebac
            x: 0
            y: 41
            width: 150
            height: 59
            source: "qrc:/ico/temp.svg"
            opacity: 0.5
        }
            Image {
                id: logImagefront
                x: 0
                y: 41
                width: 150
                height: 59
                source: "qrc:/ico/temp1.svg"
                visible: false
            }


    // 半透明遮罩
    OpacityMask {
        id: effect
        x: 0
        y: 41
        width: logImagefront.width;
        height: logImagefront.height
        source: logImagefront
        maskSource: gradient
    }

    // 用渐变做遮罩层
    RadialGradient {
        id: gradient
        visible: false
        width: logImagefront.width;
        height: logImagefront.height
        horizontalRadius: width/2
        verticalRadius: height*4/5
        horizontalOffset: 0
        gradient: Gradient{
            GradientStop{position: 0.2; color:'white'}
            GradientStop{position: 0.8; color:'transparent'}
        }

        // 用动画移动遮罩
        PropertyAnimation{
            target: gradient
            properties: 'horizontalOffset'
            from: -gradient.width
            to: gradient.width + gradient.horizontalRadius
            duration: 2000
            running: true
            loops: -1
        }
    }






//    // 半透明遮罩
//     OpacityMask {
//         id: effect
//         width: logImagefront.width;
//         height: logImagefront.width
//         source: logImagefront
//         maskSource: gradient
//     }

//     // 用渐变做遮罩层
//     RadialGradient {
//         id: gradient
//         visible: false
//         width: logImagefront.contentWidth;
//         height: logImagefront.contentHeight
//         horizontalRadius: width/2
//         verticalRadius: height*4/5
//         horizontalOffset: 0
//         gradient: Gradient{
//             GradientStop{position: 0.2; color:'white'}
//             GradientStop{position: 0.8; color:'transparent'}
//         }

//         // 用动画移动遮罩
//         PropertyAnimation{
//             target: gradient
//             properties: 'horizontalOffset'
//             from: -gradient.width
//             to: gradient.width + gradient.horizontalRadius
//             duration: 2000
//             running: true
//             loops: -1
//         }
//     }


//         RotationAnimation on rotation {
//             loops: Animation.Infinite
//             from: 0
//             to: 360
//         }

}





//    comboBox.model: ["Normal", "Vacation", "Party", "Test"]

//    button1.onClicked: {
//        dialog.open()
//    }

//    MessageDialog {
//        id: dialog
//        title: qsTr("May I have your attention, please?")

//        function show(caption) {
//            dialog.text = caption;
//            dialog.open();
//        }
//    }

