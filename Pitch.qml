import QtQuick 2.0

Item {
    id: itemPitch
    width: parent.width
    height: parent.height
    z: 100
    property string m_pitchName: ""
    property date m_curDate: new Date()

    Rectangle {
        anchors.fill: parent
        color: "#e8e8e7"
        z: 101
    }

    HeadItem {
        id: head
        visible: true
        z: 103
        m_headTitle: "场地详情"
        m_imgToolUrl: "images/icon/share.png"
        onRetClicked: {
            stackMain.pop()
        }
    }

    Component.onCompleted: {
        var day = m_curDate.getDay()
        for(var i=day;i<20;i++) {
            lModel.append({
                             "dateStr":m_curDate.getMonth() + "月" + i + "日",
                             "weekStr":"周六"
                          })
        }
    }

    Flickable {
        id: flick
        z: 102
        anchors.top: head.bottom
        anchors.bottom: parent.bottom
        width: parent.width
        height: parent.height - head.height
        contentWidth: width
        contentHeight: rectInfo.height + rectList.height + rectJob.height + rectCall.height + rectMark.height + 20/800*parent.height*6

        Rectangle {
            id: rectInfo
            color: "#ffffff"
            width: parent.width
            height: (imgPitch.height >= rectText.height ? imgPitch.height : rectText.height)
                    + imgPitch.anchors.topMargin
                    + txtListTit.height + txtListTit.anchors.topMargin
                    + 10/800*itemPitch.height

            Image {
                id: imgPitch
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.topMargin: 10/800*itemPitch.height
                anchors.leftMargin: 10/480*itemPitch.width
                source: "images/item_def.jpg"
                width: 155/480*itemPitch.width
                height: 116/480*itemPitch.width
            }

            Rectangle {
                id: rectText
                anchors.left: imgPitch.right
                anchors.top: parent.top
                anchors.leftMargin: 10/480*parent.width
                anchors.topMargin: 10/800*itemPitch.height
                width: 300/480*itemPitch.width
                height: 122/800*itemPitch.width

                Text {
                    id: txtName
                    width: parent.width
                    text: m_pitchName
                    font.pointSize: 16
                    color: "#333333"
                    font.family: "微软雅黑"
                    anchors.top: parent.top
                    anchors.topMargin: 3/112*parent.height
                }

                Image {
                    id: imgTip
                    source: "images/icon/tip.png"
                    width: 25
                    height: 25
                    anchors.top: txtTis.top
                }

                Text {
                    id: txtTis
                    text: "订场时请一定要购买保险，对队友负责，对家庭负责。"
                    width: parent.width - imgTip.width - anchors.leftMargin
                    color: "#666666"
                    font.family: "微软雅黑"
                    anchors.top: txtName.bottom
                    anchors.topMargin: 20/112*parent.height
                    anchors.left: imgTip.right
                    anchors.leftMargin: 10/480*itemPitch.width
                    font.pointSize: 16
                    wrapMode: Text.WrapAnywhere
                }
            }

            Text {
                anchors.top: imgPitch.height >= rectText.height ? imgPitch.bottom : rectText.bottom
                anchors.left: parent.left
                anchors.topMargin: 26/800*itemPitch.height
                anchors.leftMargin: 10/480*itemPitch.width
                font.pointSize: 20
                id: txtListTit
                text: qsTr("场次预定")
                color: "#333333"
            }
        }

        Rectangle {
            id: rectList
            width: parent.width
            height: 160/800*itemPitch.height
            anchors.top: rectInfo.bottom
            color: "#e8e8e7"
            ListView {
                id: list
                width: parent.width
                height: 160/800*itemPitch.height
                model: lModel
                delegate: delegate
                orientation: ListView.Horizontal
                anchors.verticalCenter: parent.verticalCenter
                Component {
                    id: delegate
                    Item {
                        height: 150/800*itemPitch.height
                        width: 110/480*itemPitch.width
                        Rectangle {
                            anchors.fill: parent
                            anchors.margins: 6/480*itemPitch.width
                            color: "#ffffff"
                            radius: 5/480*itemPitch.width
                            Text {
                                id: txtWeek
                                anchors.horizontalCenter: parent.horizontalCenter
                                color: "#333333"
                                anchors.top: parent.top
                                anchors.topMargin: 14/800*itemPitch.height
                                font.pointSize: 16
                                text: weekStr
                            }
                            Text {
                                id: txtDate
                                anchors.horizontalCenter: parent.horizontalCenter
                                color: "#999999"
                                anchors.top: txtWeek.bottom
                                anchors.topMargin: 7///800*itemPitch.height
                                text: dateStr
                            }
                            Rectangle {
                                anchors.top: txtDate.bottom
                                anchors.topMargin: 7///800*itemPitch.height
                                border.color: "red"
                                border.width: 1
                                radius: 3/480*itemPitch.width
                                anchors.horizontalCenter: parent.horizontalCenter
                                width: txtVePost.width + 10
                                height: txtVePost.height + 5
                                Text {
                                    id: txtVePost
                                    color: "red"
                                    anchors.centerIn: parent
                                    text: "预定"
                                    font.pointSize: 16
                                }
                            }
                        }
                    }
                }
                ListModel {
                    id: lModel
                }
            }
        }

        Rectangle {
            id: rectJob
            anchors.top: rectList.bottom
            color: "#ffffff"
            height: txtJob.height + 40
            width: parent.width
            Text {
                id: txtJob
                font.pointSize: 18
                color: "#666666"
                anchors.left: parent.left
                anchors.leftMargin: 10/480*parent.width
                anchors.verticalCenter: parent.verticalCenter
                text: "散客招募"
            }
            Text {
                text: ">"
                anchors.right: parent.right
                anchors.rightMargin: 10/480*parent.width
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 18
                color: "#999999"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                }
            }
        }

        Rectangle {
            id: rectCall
            anchors.top: rectJob.bottom
            anchors.topMargin: 20/800*itemPitch.height
            width: parent.width
            height: txtPhone.height + txtPhone.anchors.topMargin*2 + txtAddr.height + 20/800*itemPitch.height*2 + 2
            color: "#ffffff"
            Image {
                id: imgPhone
                source: "images/icon/phone.png"
                height: txtPhone.height
                width: height
                anchors.bottom: txtPhone.bottom
                x: txtJob.x
            }
            Text {
                id: txtPhone
                text: "13807799097"
                anchors.left: imgPhone.right
                anchors.leftMargin: 20
                anchors.top: parent.top
                anchors.topMargin: 20/800*itemPitch.height
                color: "#666666"
                font.pointSize: 18
            }
            Text {
                text: ">"
                color: "#999999"
                font.pointSize: 18
                anchors.right: parent.right
                anchors.rightMargin: 10/480*parent.width
                anchors.bottom: txtPhone.bottom
            }

            Rectangle {
                id: line_1
                anchors.top: txtPhone.bottom
                anchors.topMargin: 20/800*itemPitch.height
                height: 2
                color: "#E8E8E7"
                width: parent.width - 16/480*itemPitch.width
            }

            Image {
                id: imgPos
                source: "images/icon/mark_g.png"
                height: imgPhone.height
                width: imgPhone.width
                y: txtAddr.y + txtAddr.height/2 - height/2
                x: txtJob.x
            }
            Text {
                id: txtAddr
                text: "北海市海城区西藏路108号银河科技园后面场地"
                anchors.left: imgPos.right
                anchors.leftMargin: 20
                anchors.top: line_1.bottom
                anchors.topMargin: 20/800*itemPitch.height
                color: "#666666"
                font.pointSize: 18
                width: parent.width - imgPos.width - txtJob.anchors.leftMargin - imgGoto.width - imgGoto.anchors.rightMargin - 40
                wrapMode: Text.WrapAnywhere
            }
            Image {
                id: imgGoto
                anchors.right: parent.right
                anchors.rightMargin: 10/480*parent.width
                anchors.bottom: imgPos.bottom
                width: 95
                height: 23
                source: "images/goto.png"
            }
        }

        Rectangle {
            id: rectMark
            anchors.top: rectCall.bottom
            anchors.topMargin: 20/800*parent.height
            color: "#ffffff"
            height: txtMarkTit.height + 2 + txtSumy.height + 20/800*itemPitch.height*4
            width: parent.width

            Text {
                id: txtMarkTit
                font.pointSize: 18
                color: "#333333"
                anchors.left: parent.left
                anchors.leftMargin: 10/480*parent.width
                anchors.top: parent.top
                anchors.topMargin: 20/800*itemPitch.height
                text: "场地简介"
            }

            Rectangle {
                id: line_2
                anchors.top: txtMarkTit.bottom
                anchors.topMargin: 20/800*itemPitch.height
                height: 2
                color: "#E8E8E7"
                width: parent.width - 16/480*itemPitch.width
            }

            Text {
                id: txtSumy
                text: "有灯光，假草，楼下就是停车场，后背靠就是银河科技园区，进出方便，有小卖部，买东西方便。"
                x: txtMarkTit.x
                anchors.top: line_2.bottom
                anchors.topMargin: 20/800*itemPitch.height
                color: "#999999"
                font.pointSize: 17
                width: parent.width - 16/480*itemPitch.width
                wrapMode: Text.WrapAnywhere
            }
        }
    }
}
