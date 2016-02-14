import QtQuick 2.0

Item {
    width: parent.width
    height: 60/800 * parent.height
    anchors.top: parent.top
    property string m_headTitle: "场地信息"
    property string m_imgRetUrl: "images/icon/back.png"
    property string m_imgToolUrl: "images/icon/srch.png"
    signal retClicked()
    signal toolClicked()
    Component.onCompleted: {
        maRet.clicked.connect(retClicked)
        maTool.clicked.connect(toolClicked)
    }

    Rectangle {
        id: rectHead
        z: 1
        width: parent.width
        height: parent.height
        color: g_mColor

        Rectangle {
            id: retRect
            z: 2
            width: 48/60*parent.height
            height: 48/60*parent.height
            color: "#00000000"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 8

            Image {
                id: imgRet
                source: m_imgRetUrl
                anchors.fill: parent
                antialiasing: true
                scale: 0.8
            }
            MouseArea
            {
                id: maRet
                anchors.fill: parent
                onClicked: console.log("ret clicked")
            }
        }

        Text {
            id: txtWinTitle
            width: 360/480*parent.width
            color: "#ffffff"
            text: m_headTitle
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 20
        }

        Rectangle {
            id: toolRect
            z: 2
            width: 48/60*parent.height
            height: 48/60*parent.height
            color: "#00000000"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 8
            Image {
                id: imgTool
                source: m_imgToolUrl
                anchors.fill: parent
                antialiasing: true
                scale: 0.8
            }
            MouseArea
            {
                id: maTool
                anchors.fill: parent
                onClicked: console.log("tool clicked")
            }
        }
    }
}

