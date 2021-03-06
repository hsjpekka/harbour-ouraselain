import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    signal nextPressed(int chNr)
    property int currentChart: 0
    property alias title: lbl.text
    property alias value: val.text

    Label {
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: Theme.paddingLarge
        }
        text: "Oura"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Theme.fontSizeExtraLarge
    }

    Label {
        id: lbl
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.verticalCenter
            bottomMargin: Theme.paddingMedium
        }
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        width: parent.width
        horizontalAlignment: Text.AlignHCenter
        text: qsTr("OuraSelain")
    }

    Label {
        id: val
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: parent.verticalCenter
            topMargin: Theme.paddingMedium
        }
        text: ""
    }

    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-cover-next"
            onTriggered: {
                nextPressed(currentChart)
            }
        }
    }
}
