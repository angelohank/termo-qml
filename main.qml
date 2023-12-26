import QtQuick 2.12
import QtQuick.Window 2.12

Window {

    property string background_color: "#008080"

    visible: true
    width: 640
    height: 480
    title: qsTr("Termo")

    Rectangle {
        id: wordContainer

        width: parent.width
        height: parent.height - footer.height
        anchors.top: parent.top
        anchors.topMargin: 15

        Column {
            anchors.centerIn: parent
            spacing: 8

            Repeater {
                model: 5

                WordField{}
            }
        }

    }

    Rectangle {
        id: footer
        anchors.bottom: parent.bottom
        width: parent.width
        height: 100

        Rectangle {
            id: button

            width: parent.width * 0.5
            height: 50
            anchors.centerIn: parent
            radius: 8
            border {
                width: 1
                color: "#008080"
            }

            Text {
                text: qsTr("Verificar")
                anchors.centerIn: parent
            }
        }
    }
}
