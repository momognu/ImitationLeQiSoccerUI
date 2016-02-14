import QtQuick 2.0

Item {
    id: itemPlayers
    width: parent.width
    height: parent.height
    property int m_curTopMenuItem: 0

    HeadItem {
        id: itemHead
        z: 103
        m_headTitle: "约球员"
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

    Rectangle {
        z: 103
        id: rectTopMenus
        anchors.top: itemHead.bottom
        anchors.left: parent.left
        anchors.right: line_1.left
        height: rectSelcer.height
        width: parent.width - line_1.width - rectSelcer.width
        color: "#ffffff"
        Rectangle {
            id: tmPlayers
            height: parent.height
            width: parent.width/3
            x: parent.x
            Text {
                anchors.centerIn: parent
                color: m_curTopMenuItem==0 ? g_mColor : "#333333"
                font.pointSize: 18
                text: "球员"
            }
            Rectangle {
                height: 2
                width: parent.width
                anchors.bottom: parent.bottom
                color: m_curTopMenuItem==0 ? g_mColor : "#E8E8E7"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(m_curTopMenuItem != 0) {
                        m_curTopMenuItem = 0
                        m_curCount = 1772
                        m_curTypeName = "球员"
                    }
                }
            }
        }
        Rectangle {
            id: tmRefers
            height: parent.height
            width: parent.width/3
            x: parent.width/2 - width/2
            Text {
                anchors.centerIn: parent
                color: m_curTopMenuItem==1 ? g_mColor : "#333333"
                font.pointSize: 18
                text: "裁判"
            }
            Rectangle {
                height: 2
                width: parent.width
                anchors.bottom: parent.bottom
                color: m_curTopMenuItem==1 ? g_mColor : "#E8E8E7"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(m_curTopMenuItem != 1) {
                        m_curTopMenuItem = 1
                        m_curCount = 1088
                        m_curTypeName = "裁判"
                    }
                }
            }
        }
        Rectangle {
            id: tmBabys
            height: parent.height
            width: parent.width/3
            x: parent.width/2 + width/2
            Text {
                anchors.centerIn: parent
                color: m_curTopMenuItem==2 ? g_mColor : "#333333"
                font.pointSize: 18
                text: "宝贝"
            }
            Rectangle {
                height: 2
                width: parent.width
                anchors.bottom: parent.bottom
                color: m_curTopMenuItem==2 ? g_mColor : "#E8E8E7"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(m_curTopMenuItem != 2) {
                        m_curTopMenuItem = 2
                        m_curCount = 5498
                        m_curTypeName = "宝贝"
                    }
                }
            }
        }
    }

    Rectangle {
        z: 103
        id: line_1
        anchors.right: rectSelcer.left
        color: "#E8E8E7"
        height: rectSelcer.height - 12/800*itemPlayers.height
        width: 2
        anchors.verticalCenter: rectSelcer.verticalCenter
    }

    Rectangle {
        z: 103
        id: rectSelcer
        anchors.top: itemHead.bottom
        anchors.right: parent.right
        height: 60/800*parent.height
        width: 100/480*itemPlayers.width
        color: "#ffffff"
        Text {
            id: txtSelcer
            text: qsTr("筛选")
            anchors.left: parent.left
            anchors.leftMargin: 10/480*itemPlayers.width
            anchors.verticalCenter: parent.verticalCenter
            color: "#666666"
            font.pointSize: 16
        }
        Image {
            source: "images/icon/selcer.png"
            height: txtSelcer.height
            width: height
            anchors.top: txtSelcer.top
            anchors.left: txtSelcer.right
            anchors.leftMargin: 10
        }
        Rectangle {
            height: 2
            width: parent.width
            anchors.bottom: parent.bottom
            color: "#E8E8E7"
        }
    }

    Rectangle {
        z: 103
        id: rectTags
        anchors.top: rectSelcer.bottom
        width: parent.width
        height: 70/800*parent.height
        color: "#ffffff"
        ListView {
            id: lvTags
            orientation: ListView.Horizontal
            anchors.fill: parent
            model: lmTags
            delegate: deleTags
            Component {
                id: deleTags
                Rectangle {
                    height: 70/800*itemPlayers.height
                    width: rectItemTgn.width + 20/480*itemPlayers.width
                    color: "#ffffff"
                    Rectangle {
                        id: rectItemTgn
                        border.color: "#b7682f"
                        border.width: 2
                        radius: 7/480*itemPlayers.width
                        anchors.centerIn: parent
                        width: txtTgn.width + 40
                        height: txtTgn.height + 10
                        Text {
                            id: txtTgn
                            color: "#b7682f"
                            text: tgName
                            font.pointSize: 15
                            anchors.centerIn: parent
                        }
                        Text {
                            id: txtTgi
                            text: tgId
                            visible: false
                        }
                    }
                }
            }
            ListModel {
                id: lmTags
                ListElement {
                    tgId: 1
                    tgName: "前锋"
                }
                ListElement {
                    tgId: 2
                    tgName: "边前卫"
                }
                ListElement {
                    tgId: 3
                    tgName: "门将"
                }
                ListElement {
                    tgId: 4
                    tgName: "后腰"
                }
            }
        }
    }

    Rectangle {
        z: 103
        id: itemTips
        anchors.top: rectTags.bottom
        width: parent.width
        height: 70/800*parent.height
        color: "#e8e8e7"
        Image {
            source: "images/icon/tip.png"
            width: height
            height: txtTips.height
            anchors.top: txtTips.top
            anchors.left: parent.left
            anchors.leftMargin: 20/480*parent.width
        }
        Text {
            id: txtTips
            text: "共有 " + m_curCount + " 位" + m_curTypeName + "可约。"
            color: "#666666"
            font.pointSize: 17
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: height + 26/480*parent.width
        }
        Rectangle {
            id: rectLogin
            anchors.right: parent.right
            anchors.rightMargin: 10/480*parent.width
            radius: 30/480*parent.width
            anchors.verticalCenter: parent.verticalCenter
            width: txtLogin.width + 34
            height: txtLogin.height + 16
            color: g_mColor
            Text {
                id: txtLogin
                text: "成为" + m_curTypeName
                color: "#ffffff"
                font.family: "黑体"
                font.pointSize: 17
                anchors.centerIn: parent
            }
        }
    }

    property int m_curCount: 1772//
    property string m_curTypeName: "球员"//

    Player {
        id: itemPlayer
        visible: false
    }

    GridView {
        z: 102
        id: lvPlayers
        anchors.top: itemTips.bottom
        anchors.topMargin: 4/800*parent.height
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - 10/480*parent.width
        cellWidth: width/2
        cellHeight: cellWidth + cellWidth/3
        model: lmPlayers
        delegate: delePlayers
        Component {
            id: delePlayers
            Item {
                width: lvPlayers.width/2
                height: width + width/3
                Rectangle {
                    anchors.fill: parent
                    anchors.margins: 10/480*itemPlayers.width
                    color: "#ffffff"
                    Image {
                        id: imgPlyitem
                        anchors.top: parent.top
                        anchors.left: parent.left
                        anchors.right: parent.right
                        width: parent.width
                        height: width
                        source: playerImgUrl
                    }
                    Text {
                        id:  txtId
                        text: playerId
                        visible: false
                    }
                    Text {
                        id: txtName
                        color: "#333333"
                        text: playerName
                        anchors.top: imgPlyitem.bottom
                        anchors.left: parent.left
                        anchors.topMargin: 16/800*itemPlayers.height
                        anchors.leftMargin: 8/480*itemPlayers.width
                        font.pointSize: 16
                    }
                    Text {
                        id: txtMon
                        color: g_mColor
                        text: "¥ " + playerMen + "元/小时"
                        anchors.top: txtName.bottom
                        anchors.left: parent.left
                        anchors.topMargin: 8/800*itemPlayers.height
                        anchors.leftMargin: 8/480*itemPlayers.width
                        font.pointSize: 13
                    }
                    Text {
                        id: txtVc
                        color: "#666666"
                        text: viewCount + "人看过"
                        anchors.bottom: txtMon.bottom
                        anchors.right: parent.right
                        anchors.rightMargin: 8/480*itemPlayers.width
                        font.pointSize: 13
                    }
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        stackMain.push(itemPlayer)
                    }
                }
            }
        }
        ListModel {
            id: lmPlayers
            ListElement {
                playerId: 1
                playerName: "罗永"
                playerImgUrl: "images/player_def.jpg"
                playerMen: 100
                viewCount: 154
            }
            ListElement {
                playerId: 2
                playerName: "李逵"
                playerImgUrl: "images/player_def.jpg"
                playerMen: 50
                viewCount: 87
            }
            ListElement {
                playerId: 3
                playerName: "孙浩江"
                playerImgUrl: "images/player_def.jpg"
                playerMen: 500
                viewCount: 44
            }
            ListElement {
                playerId: 4
                playerName: "曾成"
                playerImgUrl: "images/player_def.jpg"
                playerMen: 150
                viewCount: 179
            }
        }
    }
}
