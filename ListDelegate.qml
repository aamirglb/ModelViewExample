import QtQuick 2.5
import QtQuick.Layouts 1.2

Item {
    id: root
    width: ListView.view.width
    height:                 48
    property alias text:    label.text
    property alias color:   label.color
    property var colorName

    Rectangle {
        anchors.fill:   parent
        color:          "white"
        border.color:   Qt.darker(color)

        RowLayout {
            anchors.fill:           parent
            anchors.leftMargin:     8
            anchors.rightMargin:    8
            Item {
                Layout.fillWidth:   true
                Layout.fillHeight:  true

                Rectangle {
                    id:                 colorRect
                    width:              75
                    height:             parent.height - 8
                    anchors.left:       parent.left
                    anchors.top:        parent.top
                    anchors.margins:    4
                    color:              colorName
                    border.color:       "#000000"
                }

                Text {
                    id:                     label
                    anchors.left:           colorRect.right
                    anchors.margins:        2
                    anchors.verticalCenter: parent.verticalCenter
                    text:                   (index+1) + ". " + colorName
                    color:                  'black'
                    font.pixelSize:         24
                }
            }
        }
    }    
}
