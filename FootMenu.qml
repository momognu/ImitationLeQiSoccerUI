import QtQuick 2.5
import QtQuick.Layouts 1.1

Rectangle {
    id: footMenu
    width: parent.width
    height: 60/800*parent.height
    color: "#ffffff"
    property int m_curIndex: 0

    Row {
        //spacing: (parent.width - btnVenue.width*5) /6
        width: parent.width//(btnVenue.width*5)+(spacing*4)
        height: parent.height
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            z: 2
            id: btnVenue
            anchors.verticalCenter: parent.verticalCenter
            color: "#ffffff"
            height: parent.height
            width: parent.width/5
            Image {
                id: imgVenue
                width: height
                height: parent.height - 34/800*winMain.height
                source: m_curIndex==0 ? "images/tab/venue_p.png" : "images/tab/venue_n.png"
                anchors.top: parent.top
                anchors.topMargin: 4
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                anchors.top: imgVenue.bottom
                anchors.topMargin: 2
                anchors.horizontalCenter: parent.horizontalCenter
                text: "订场"
                color: m_curIndex==0 ? g_mColor : "#7c7c7c"
                font.pointSize: 13
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(m_curIndex != 0) {
                        m_curIndex = 0
                        stackMain.clear()
                        stackMain.push(itemPitchs)
                        console.log(stackMain.depth)
                    }
                }
            }
        }

        Rectangle {
            z: 2
            id: btnRese
            anchors.verticalCenter: parent.verticalCenter
            color: "#ffffff"
            height: parent.height
            width: parent.width/5
            Image {
                id: imgRese
                width: height
                height: parent.height - 34/800*winMain.height
                source: m_curIndex==1 ? "images/tab/resever_p.png" : "images/tab/resever_n.png"
                anchors.top: parent.top
                anchors.topMargin: 4
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                anchors.top: imgRese.bottom
                anchors.topMargin: 2
                anchors.horizontalCenter: parent.horizontalCenter
                text: "约"
                color: m_curIndex==1 ? g_mColor : "#7c7c7c"
                font.pointSize: 13
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(m_curIndex != 1) {
                        m_curIndex = 1
                        stackMain.clear()
                        stackMain.push(itemPlayers)
                        console.log(stackMain.depth)
                    }
                }
            }
        }

        Rectangle {
            z: 2
            id: btnBx
            anchors.verticalCenter: parent.verticalCenter
            color: "#ffffff"
            height: parent.height
            width: parent.width/5
            Image {
                id: imgBx
                width: height
                height: parent.height - 34/800*winMain.height
                source: m_curIndex==2 ? "images/tab/bx_p.png" : "images/tab/bx_n.png"
                anchors.top: parent.top
                anchors.topMargin: 4
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                anchors.top: imgBx.bottom
                anchors.topMargin: 2
                anchors.horizontalCenter: parent.horizontalCenter
                text: "保险"
                color: m_curIndex==2 ? g_mColor : "#7c7c7c"
                font.pointSize: 13
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(m_curIndex != 2) {
                        m_curIndex = 2
                        stackMain.clear()
                        stackMain.push(itemInsurs)
                        console.log(stackMain.depth)
                    }
                }
            }
        }

        Rectangle {
            z: 2
            id: btnGame
            anchors.verticalCenter: parent.verticalCenter
            color: "#ffffff"
            height: parent.height
            width: parent.width/5
            Image {
                id: imgGame
                width: height
                height: parent.height - 34/800*winMain.height
                source: m_curIndex==3 ? "images/tab/game_p.png" : "images/tab/game_n.png"
                anchors.top: parent.top
                anchors.topMargin: 4
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                anchors.top: imgGame.bottom
                anchors.topMargin: 2
                anchors.horizontalCenter: parent.horizontalCenter
                text: "赛事"
                color: m_curIndex==3 ? g_mColor : "#7c7c7c"
                font.pointSize: 13
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(m_curIndex != 3) {
                        m_curIndex = 3
                        stackMain.clear()
                        stackMain.push(itemGames)
                        console.log(stackMain.depth)
                    }
                }
            }
        }

        Rectangle {
            z: 2
            id: btnUinfo
            anchors.verticalCenter: parent.verticalCenter
            color: "#ffffff"
            height: parent.height
            width: parent.width/5
            Image {
                id: imgUinfo
                width: height
                height: parent.height - 34/800*winMain.height
                source: m_curIndex==4 ? "images/tab/userinfo_p.png" : "images/tab/userinfo_n.png"
                anchors.top: parent.top
                anchors.topMargin: 4
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                anchors.top: imgUinfo.bottom
                anchors.topMargin: 2
                anchors.horizontalCenter: parent.horizontalCenter
                text: "我的"
                color: m_curIndex==4 ? g_mColor : "#7c7c7c"
                font.pointSize: 13
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(m_curIndex != 4) {
                        m_curIndex = 4
                        stackMain.clear()
                        stackMain.push(itemMember)
                        console.log(stackMain.depth)
                    }
                }
            }
        }
    }
}
