import QtQuick 2.0

Item {
    id: itemRegister
    width: parent.width
    height: parent.height

    z: 100

    Rectangle {
        anchors.fill: parent
        color: "#e8e8e7"
        z: 101
    }

    HeadItem {
        id: itemHead
        m_headTitle: "注册新用户"
        m_imgToolUrl: ""
        onRetClicked: {
            stackMain.pop()
        }
        z: 103
    }

    Flickable {
        z: 102
        width: parent.width
        height: parent.height - itemHead.height - anchors.topMargin
        anchors.topMargin: 10/800*parent.height
        contentWidth: parent.width
        contentHeight: parent.height + rectRegForm.height

        Rectangle {
            id: rectRegForm
            anchors.top: parent.top
            width: parent.width-20/480*itemRegister.width
            height: 500
        }
    }
}
