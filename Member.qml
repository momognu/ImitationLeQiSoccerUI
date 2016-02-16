import QtQuick 2.5
//import mth.qt.Members 1.0

Item {
    id: itemMember
    width: parent.width
    height: parent.height
    z: 100

    //    Members {
    //        id: memberInfo
    //    }

    Rectangle {
        z: 101
        color: "#E8E8E7"
        anchors.fill: parent
    }

    Flickable {
        z: 102
        id: flick
        width: parent.width
        height: parent.height
        contentWidth: parent.width
        contentHeight: memberHead.height + rectMemorder.height*6 + rectSubmenu.height + rectMeminfo.anchors.topMargin*4 + 2*3

        Rectangle {
            z: 102
            id: memberHead
            width: itemMember.width// - 20/480*itemMember.width
            height: 300/800*itemMember.height
            color: "#E14546"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            Image {
                z: 1000
                id: imgHead
                anchors.centerIn: parent
                width: 100/480*itemMember.width
                height: width
                source: "images/head.jpg"
            }
            Rectangle {
                z: 1001
                id: rectBorder
                anchors.centerIn: parent
                width: 160/480*itemMember.width
                height: width
                border.width: 36/480*itemMember.width
                border.color: "#E14546"
                color: "#00000000"
                radius: 360/480*itemMember.width
            }
            Text {
                z: 1002
                text: g_mcname == "" ? g_mname == "" ? g_mnum : g_mname : g_mcname
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: imgHead.bottom
                anchors.topMargin: 22/480*itemMember.width
                color: "#ffffff"
                font.family: "微软雅黑"
                font.pointSize: 16
            }
        }

        Rectangle {
            z: 102
            id: rectMemorder
            anchors.top: memberHead.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            width: itemMember.width// - 20/480*itemMember.width
            height: 60/800*itemMember.height
            Image {
                id: imgOrder
                source: "images/mem/order.png"
                anchors.left: parent.left
                anchors.leftMargin: 18/480*itemMember.width
                height: txtOrder.height
                width: height
                anchors.bottom: txtOrder.bottom
            }
            Text {
                id: txtOrder
                text: "我的订单"
                font.family: "微软雅黑"
                font.pointSize: 16
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: imgOrder.right
                anchors.leftMargin: 18/480*itemMember.width
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                }
            }
        }

        Rectangle {
            z: 102
            id: rectSubmenu
            anchors.top: rectMemorder.bottom
            anchors.topMargin: 2/800*itemMember.height
            anchors.horizontalCenter: parent.horizontalCenter
            width: itemMember.width// - 20/480*itemMember.width
            height: 60/800*itemMember.height
            Row {
                width: parent.width
                height: parent.height
                Rectangle {
                    width: parent.width/5
                    height: parent.height
                    Image {
                        id: imgSmPitch
                        anchors.top: parent.top
                        anchors.topMargin: 4
                        height: parent.height - 34/800*itemMember.height
                        width: height
                        source: "images/mem/sm_pitch.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Text {
                        anchors.top: imgSmPitch.bottom
                        anchors.topMargin: 2
                        text: "订场"
                        color: "#999999"
                        font.pointSize: 13
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
                Rectangle {
                    width: parent.width/5
                    height: parent.height
                    Image {
                        id: imgSmPlayer
                        anchors.top: parent.top
                        anchors.topMargin: 4
                        height: parent.height - 34/800*itemMember.height
                        width: height
                        source: "images/mem/sm_veue.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Text {
                        anchors.top: imgSmPlayer.bottom
                        anchors.topMargin: 2
                        text: "约"
                        color: "#999999"
                        font.pointSize: 13
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
                Rectangle {
                    width: parent.width/5
                    height: parent.height
                    Image {
                        id: imgSmBx
                        anchors.top: parent.top
                        anchors.topMargin: 4
                        height: parent.height - 34/800*itemMember.height
                        width: height
                        source: "images/mem/sm_bx.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Text {
                        anchors.top: imgSmBx.bottom
                        anchors.topMargin: 2
                        text: "保险"
                        color: "#999999"
                        font.pointSize: 13
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
                Rectangle {
                    width: parent.width/5
                    height: parent.height
                    Image {
                        id: imgSmAa
                        anchors.top: parent.top
                        anchors.topMargin: 4
                        height: parent.height - 34/800*itemMember.height
                        width: height
                        source: "images/mem/sm_aa.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Text {
                        anchors.top: imgSmAa.bottom
                        anchors.topMargin: 2
                        text: "AA收款"
                        color: "#999999"
                        font.pointSize: 13
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
                Rectangle {
                    width: parent.width/5
                    height: parent.height
                    Image {
                        id: imgSmGame
                        anchors.top: parent.top
                        anchors.topMargin: 4
                        height: parent.height - 34/800*itemMember.height
                        width: height
                        source: "images/mem/sm_game.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Text {
                        anchors.top: imgSmGame.bottom
                        anchors.topMargin: 2
                        text: "赛事活动"
                        color: "#999999"
                        font.pointSize: 13
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }

        Rectangle {
            z: 102
            id: rectMeminfo
            anchors.top: rectSubmenu.bottom
            anchors.topMargin: 20/800*itemMember.height
            anchors.horizontalCenter: parent.horizontalCenter
            width: itemMember.width// - 20/480*itemMember.width
            height: 60/800*itemMember.height
            Image {
                id: imgMeminfo
                source: "images/mem/accot.png"
                anchors.left: parent.left
                anchors.leftMargin: 18/480*itemMember.width
                height: txtMeminfo.height
                width: height
                anchors.bottom: txtMeminfo.bottom
            }
            Text {
                id: txtMeminfo
                text: "账号资料"
                font.family: "微软雅黑"
                font.pointSize: 16
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: imgMeminfo.right
                anchors.leftMargin: 18/480*itemMember.width
            }
            Text {
                text: ">"
                font.family: "微软雅黑"
                font.pointSize: 16
                anchors.right: parent.right
                anchors.rightMargin: 10/480*itemMember.width
                anchors.verticalCenter: parent.verticalCenter
                color: "#999999"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                }
            }
        }

        Rectangle {
            z: 102
            id: rectSysmsg
            anchors.top: rectMeminfo.bottom
            anchors.topMargin: 20/800*itemMember.height
            anchors.horizontalCenter: parent.horizontalCenter
            width: itemMember.width// - 20/480*itemMember.width
            height: 60/800*itemMember.height
            Image {
                id: imgSysmsg
                source: "images/mem/mail.png"
                anchors.left: parent.left
                anchors.leftMargin: 18/480*itemMember.width
                height: txtSysmsg.height
                width: height
                anchors.bottom: txtSysmsg.bottom
            }
            Text {
                id: txtSysmsg
                text: "系统消息"
                font.family: "微软雅黑"
                font.pointSize: 16
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: imgSysmsg.right
                anchors.leftMargin: 18/480*itemMember.width
            }
            Text {
                text: ">"
                font.family: "微软雅黑"
                font.pointSize: 16
                anchors.right: parent.right
                anchors.rightMargin: 10/480*itemMember.width
                anchors.verticalCenter: parent.verticalCenter
                color: "#999999"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                }
            }
        }

        Rectangle {
            z: 102
            id: rectAccount
            anchors.top: rectSysmsg.bottom
            anchors.topMargin: 20/800*itemMember.height
            anchors.horizontalCenter: parent.horizontalCenter
            width: itemMember.width// - 20/480*itemMember.width
            height: 60/800*itemMember.height
            Image {
                id: imgAccount
                source: "images/mem/vouch.png"
                anchors.left: parent.left
                anchors.leftMargin: 18/480*itemMember.width
                height: txtAccount.height
                width: height
                anchors.bottom: txtAccount.bottom
            }
            Text {
                id: txtAccount
                text: "资金账户"
                font.family: "微软雅黑"
                font.pointSize: 16
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: imgAccount.right
                anchors.leftMargin: 18/480*itemMember.width
            }
            Text {
                text: ">"
                font.family: "微软雅黑"
                font.pointSize: 16
                anchors.right: parent.right
                anchors.rightMargin: 10/480*itemMember.width
                anchors.verticalCenter: parent.verticalCenter
                color: "#999999"
            }
        }

        Rectangle {
            z: 102
            id: rectWriteTick
            anchors.top: rectAccount.bottom
            anchors.topMargin: 2/800*itemMember.height
            anchors.horizontalCenter: parent.horizontalCenter
            width: itemMember.width// - 20/480*itemMember.width
            height: 60/800*itemMember.height
            Image {
                id: imgWriteTick
                source: "images/mem/invo.jpg"
                anchors.left: parent.left
                anchors.leftMargin: 18/480*itemMember.width
                height: txtWriteTick.height
                width: height
                anchors.bottom: txtWriteTick.bottom
            }
            Text {
                id: txtWriteTick
                text: "开发票"
                font.family: "微软雅黑"
                font.pointSize: 16
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: imgWriteTick.right
                anchors.leftMargin: 18/480*itemMember.width
            }
            Text {
                text: ">"
                font.family: "微软雅黑"
                font.pointSize: 16
                anchors.right: parent.right
                anchors.rightMargin: 10/480*itemMember.width
                anchors.verticalCenter: parent.verticalCenter
                color: "#999999"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                }
            }
        }

        Rectangle {
            z: 102
            id: rectOther
            anchors.top: rectWriteTick.bottom
            anchors.topMargin: 2/800*itemMember.height
            anchors.horizontalCenter: parent.horizontalCenter
            width: itemMember.width// - 20/480*itemMember.width
            height: 60/800*itemMember.height
            Image {
                id: imgOther
                source: "images/mem/other.png"
                anchors.left: parent.left
                anchors.leftMargin: 18/480*itemMember.width
                height: 12/48*width
                width: imgWriteTick.width
                anchors.verticalCenter: parent.verticalCenter
            }
            Text {
                id: txtOther
                text: "其他"
                font.family: "微软雅黑"
                font.pointSize: 16
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: imgOther.right
                anchors.leftMargin: 18/480*itemMember.width
            }
            Text {
                text: ">"
                font.family: "微软雅黑"
                font.pointSize: 16
                anchors.right: parent.right
                anchors.rightMargin: 10/480*itemMember.width
                anchors.verticalCenter: parent.verticalCenter
                color: "#999999"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                }
            }
        }
    }
}
