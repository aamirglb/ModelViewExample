import QtQuick 2.0
import QtQuick.Layouts 1.12

import org.example 1.0

Item {
    width:  450
    height: 600    

    ListView {
        id:             view
        anchors.fill:   parent
        model: DataEntryModel {}
        delegate: ListDelegate {
            // use the defined model role "display"
            colorName: model.display
        }
        highlight:  ListHighlight { }
        focus:      true
    }
}

