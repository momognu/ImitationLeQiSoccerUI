import QtQuick 2.0

Item {
    id: itemGames
    width: parent.width
    height: parent.height

    GameHead {
        id: itemHead
        z: 103
        m_headTitle: "赛事活动"
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

    ListView {
        id: listGames
        z: 102
        anchors.top: itemHead.bottom
        anchors.bottom: parent.bottom
        width: parent.width
        height: parent.height - itemHead.height
        model: lmGames
        delegate: deleGames
        ListModel {
            id: lmGames
            ListElement {
                gameImgUrl: "images/g_01.jpeg"
            }
            ListElement {
                gameImgUrl: "images/g_02.jpeg"
            }
            ListElement {
                gameImgUrl: "images/g_03.jpeg"
            }
        }
        Component {
            id: deleGames
            Item {
                width: 480/480*listGames.width
                height: 267/480*listGames.width
                z: 100
                Rectangle {
                    anchors.fill: parent
                    color: "#ffffff"
                }
                Image {
                    z: 102
                    source: gameImgUrl
                    anchors.fill: parent
                    anchors.margins: 10/480*itemGames.width
                }
            }
        }
    }
}

