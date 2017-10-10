import QtQuick 2.4

Rectangle {
    id:digiClock
    width: 150
    height: 75

    color:"#19191900"
    property color timeColor: text1.color
    property color dayColor: text2.color
        property color daysColor: text3.color
    Column {
        anchors.centerIn: parent
        Text {
            id: text1
             color: 'white'//"#DCDCCC" //#014397
            font {
                family: qsTr("AR PL UKai CN")
                pixelSize: 50
                bold: true
                weight: Font.DemiBold
            }
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            id: text2
            color:'white'// "#DCDCCC"
            font {
                family: qsTr("AR PL UKai CN")
                pixelSize: 20
                bold: true
                weight: Font.DemiBold
            }

            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            id: text3
            color: 'white'//"#DCDCCC"
            font {
                family: qsTr("AR PL UKai CN")
                pixelSize: 20
                bold: true
                weight: Font.DemiBold
            }
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Timer {
        interval: 500
        running: true
        repeat: true

        onTriggered: {
            var date = new Date()
            text1.text =  date.toLocaleTimeString(Qt.locale("en_US"), "hh") +
                    ((date.toLocaleTimeString(Qt.locale("en_US"), "s")%2)? ":":" ") +
                    date.toLocaleTimeString(Qt.locale("en_US"), "mm")
            text2.text = date.toLocaleDateString(Qt.locale("en_US"),"dd.MM.yyyy")
            text3.text = date.toLocaleDateString(Qt.locale("en_US"),"dddd")
        }
    }
}
