import QtQuick 2.5

Rectangle {
    id:         root
    width:      ListView.view.width
    height:     48
    color:      "transparent"   // fully transparent
    z:          10              // stack it above delegate component

    Rectangle {
        width:          8
        height:         8
        radius:         4
        anchors.left:   parent.left
        anchors.leftMargin:     2
        anchors.verticalCenter: parent.verticalCenter
        color: "red"
    }

    Rectangle {
        width:              parent.width - (90)
        height:             parent.height
        anchors.right:      parent.right
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#80fed958" }
            GradientStop { position: 1.0; color: "#80fecc2f" }
        }
    }
}
