import QtQuick 2.0

Rectangle {
    id: root
    width: 700
    height: 440

    Title { id: title ; title: 'ColumnRow' }
    PlanetsModel { id: planets }

    Rectangle {
        id: page
        width: 500
        height: 340
        x: 100
        y: title.bottom + 25
        border.width: 1
        border.color: 'red'

        Column {
            id: col
            x: planet_display.right + 60
            y: 50
            spacing: 20

            Rectangle { color: 'red'; width: 50; height: 50 }
            Rectangle { color: 'green'; width: 50; height: 50 }
            Rectangle { color: 'blue'; width: 50; height: 50 }
        }

        Row {
            x: col.right - 30
            y: 120
            spacing: 20

            Rectangle { color: 'red'; width: 50; height: 50 }
            Rectangle { color: 'green'; width: 50; height: 50 }
            Rectangle { color: 'blue'; width: 50; height: 50 }
        }

        Column {
            spacing: 10
            y: 7
            id: planet_display
            Repeater {
                id: planet_display
                model: planets
                Rectangle {
                    width: 120
                    height: 32
                    x: 10
                    border.width: 2
                    border.color: 'black'
                    radius: 8
                    color: '#111'
                    Rectangle {
                        id: planet_color
                        x: 5
                        anchors.verticalCenter: parent.verticalCenter
                        width: 16
                        height: 16
                        radius: 8
                        color: surfaceColor
                    }
                    Text {
                        id: planet_text
                        anchors.left: planet_color.right + 8
                        anchors.verticalCenter: parent.verticalCenter
                        font.pointSize: 16
                        color: 'white'
                        text: name
                    }
                }
            }
        }
    }
}