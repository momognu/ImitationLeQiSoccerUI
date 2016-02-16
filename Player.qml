import QtQuick 2.0

Item {
    id: itemPlayer
    width: parent.width
    height: parent.height
    property string m_curType: "球员"
    property int m_playerId: 0

    HeadItem {
        id: itemHead
        z: 103
        m_headTitle: m_curType + "详情"
        m_imgToolUrl: "images/icon/share.png"
        onRetClicked: {
            stackMain.pop()
        }
    }

    Rectangle {
        anchors.fill: parent
        color: "#e8e8e7"
        z: 101
    }

    Flickable {
        z: 102
        anchors.top: itemHead.bottom
        anchors.bottom: rectFoot.top
        width: parent.width
        height: parent.height - itemHead.height - rectFoot.height
        contentWidth: parent.width
        contentHeight: parent.height + 360
        Rectangle {
            id: rectImgs
            z: 1000
            width: parent.width
            height: width
            Image {
                z: 1001
                anchors.fill: parent
                source: "images/player_def.jpg"
            }
            Rectangle {
                z: 1002
                id: rectInfo
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.leftMargin: 10/480*itemPlayer.width
                anchors.bottomMargin: 10/800*itemPlayer.height
                opacity: 0.6
                color: "#ffffff"
                height: 90/800*itemPlayer.height
                width: txtAge.width + txtHeight.width + 30/480*itemPlayer.width//180/480*itemPlayer.width
                Text {
                    id: txtName
                    text: "罗永"
                    color: "#000000"
                    font.pointSize: 16
                    y: parent.height/4 - height/2
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Rectangle {
                    id: line_1
                    height: 2
                    width: parent.width - 20/480*itemPlayer.width
                    anchors.centerIn: parent
                    color: "#999999"
                }
                Text {
                    id: txtAge
                    y: parent.height/4*3 - height/2
                    text: "19岁"
                    color: "#000000"
                    font.pointSize: 16
                    anchors.left: parent.left
                    anchors.leftMargin: 10/480*itemPlayer.width
                }
                Text {
                    id: txtHeight
                    text: "185CM / 76KG"
                    color: "#000000"
                    font.pointSize: 16
                    y: parent.height/4*3 - height/2
                    anchors.left: txtAge.right
                    anchors.leftMargin: 10/480*itemPlayer.width
                }
            }
        }

        Rectangle {
            id: rectMons
            anchors.top: rectImgs.bottom
            width: parent.width
            height: labMon.height + 20/800*itemPlayer.height
            Text {
                id: labMon
                text: "服务价格"
                anchors.leftMargin: 10/480*itemPlayer.width
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                color: "#666666"
                font.pointSize: 15
            }

            Text {
                id: txtMon
                anchors.left: labMon.right
                anchors.leftMargin: 20/480*itemPlayer.width
            }
        }
    }

    Rectangle {
        z: 103
        id: rectFoot
        color: "#e8e8e7"
        height: 80/800*parent.height
        anchors.bottom: parent.bottom
        width: parent.width
        Rectangle {
            radius: 7/480*parent.width
            color: g_mColor
            anchors.centerIn: parent
            width: parent.width - 30/480*parent.width
            height: txtSendMsg.height + 16
            Text {
                id: txtSendMsg
                text: "立即预约"
                color: "#ffffff"
                anchors.centerIn: parent
                font.pointSize: 17
            }
        }
    }
}
