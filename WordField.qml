import QtQuick 2.0

Repeater {
    id: root
    model: 1

    Row {
        spacing: 8
        LetterField {}
    }
}
