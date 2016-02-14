import QtQuick 2.0

Item {
    id: itemInsurs
    width: parent.width
    height: parent.height

    HeadItem {
        id: itemHead
        z: 103
        m_headTitle: "保险产品"
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

    Image {
        z: 103
        id: imgBanner
        source: "images/bnner.jpg"
        width: 480/480*parent.width
        height: 192/480*parent.width
        anchors.top: itemHead.bottom
    }

    Rectangle {
        z: 103
        anchors.top: imgBanner.bottom
        width: parent.width
        height: 60/800*parent.height
        id: rectTit

        Rectangle {
            color: g_mColor
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            height: 2
            width: txtTit.width + 40/480*parent.width
        }

        Text {
            id: txtTit
            anchors.centerIn: parent
            text: "足球运动意外伤害保险"
            color: g_mColor
            font.pointSize: 16
        }
    }

    Flickable {
        z: 102
        width: parent.width
        height: parent.height - rectTit.height - imgBanner.height - itemHead.height - 20/800*parent.height
        anchors.bottom: parent.bottom
        anchors.top: rectTit.bottom
        anchors.topMargin: 20/800*parent.height
        contentWidth: width
        contentHeight: rect30Day.height*9

        Rectangle {
            id: rect3Day
            anchors.top: parent.top
            width: parent.width
            height: 100/800*itemInsurs.height
            color: "#ffffff"

            Text {
                text: "3天款"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                y: parent.height/4 - height/2
                color: "#333333"
                font.pointSize: 15
            }
            Text {
                text: "¥ 8元"
                color: g_mColor
                font.pointSize: 14
                y: parent.height/4 - height/2 + 2
                anchors.right: parent.right
                anchors.rightMargin: 20/480*parent.width
            }
            Rectangle {
                height: 1
                color: "#efefef"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width - 35/480*parent.width
            }

            Text {
                color: "#999999"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                font.pointSize: 14
                text: "最高可保10万，保障期限3天。"
                anchors.top: parent.top
                anchors.topMargin: parent.height/4*3 - height/2
            }
        }

        Rectangle {
            id: rect7Day
            anchors.top: rect3Day.bottom
            anchors.topMargin: 20/800*itemInsurs.height
            width: parent.width
            height: 100/800*itemInsurs.height
            color: "#ffffff"

            Text {
                text: "7天款"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                y: parent.height/4 - height/2
                color: "#333333"
                font.pointSize: 15
            }
            Text {
                text: "¥ 18元"
                color: g_mColor
                font.pointSize: 14
                y: parent.height/4 - height/2 + 2
                anchors.right: parent.right
                anchors.rightMargin: 20/480*parent.width
            }
            Rectangle {
                height: 1
                color: "#efefef"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width - 35/480*parent.width
            }

            Text {
                color: "#999999"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                font.pointSize: 14
                text: "最高可保10万，保障期限7天。"
                anchors.top: parent.top
                anchors.topMargin: parent.height/4*3 - height/2
            }
        }

        Rectangle {
            id: rect15Day
            anchors.top: rect7Day.bottom
            anchors.topMargin: 20/800*itemInsurs.height
            width: parent.width
            height: 100/800*itemInsurs.height
            color: "#ffffff"

            Text {
                text: "15天款"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                y: parent.height/4 - height/2
                color: "#333333"
                font.pointSize: 15
            }
            Text {
                text: "¥ 28元"
                color: g_mColor
                font.pointSize: 14
                y: parent.height/4 - height/2 + 2
                anchors.right: parent.right
                anchors.rightMargin: 20/480*parent.width
            }
            Rectangle {
                height: 1
                color: "#efefef"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width - 35/480*parent.width
            }

            Text {
                color: "#999999"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                font.pointSize: 14
                text: "最高可保10万，保障期限15天。"
                anchors.top: parent.top
                anchors.topMargin: parent.height/4*3 - height/2
            }
        }

        Rectangle {
            id: rect30Day
            anchors.top: rect7Day.bottom
            anchors.topMargin: 20/800*itemInsurs.height
            width: parent.width
            height: 100/800*itemInsurs.height
            color: "#ffffff"

            Text {
                text: "30天款"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                y: parent.height/4 - height/2
                color: "#333333"
                font.pointSize: 15
            }
            Text {
                text: "¥ 38元"
                color: g_mColor
                font.pointSize: 14
                y: parent.height/4 - height/2 + 2
                anchors.right: parent.right
                anchors.rightMargin: 20/480*parent.width
            }
            Rectangle {
                height: 1
                color: "#efefef"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width - 35/480*parent.width
            }

            Text {
                color: "#999999"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                font.pointSize: 14
                text: "最高可保10万，保障期限30天。"
                anchors.top: parent.top
                anchors.topMargin: parent.height/4*3 - height/2
            }
        }

        Rectangle {
            id: rect60Day
            anchors.top: rect30Day.bottom
            anchors.topMargin: 20/800*itemInsurs.height
            width: parent.width
            height: 100/800*itemInsurs.height
            color: "#ffffff"

            Text {
                text: "60天款"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                y: parent.height/4 - height/2
                color: "#333333"
                font.pointSize: 15
            }
            Text {
                text: "¥ 58元"
                color: g_mColor
                font.pointSize: 14
                y: parent.height/4 - height/2 + 2
                anchors.right: parent.right
                anchors.rightMargin: 20/480*parent.width
            }
            Rectangle {
                height: 1
                color: "#efefef"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width - 35/480*parent.width
            }

            Text {
                color: "#999999"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                font.pointSize: 14
                text: "最高可保10万，保障期限60天。"
                anchors.top: parent.top
                anchors.topMargin: parent.height/4*3 - height/2
            }
        }

        Rectangle {
            id: rect120Day
            anchors.top: rect60Day.bottom
            anchors.topMargin: 20/800*itemInsurs.height
            width: parent.width
            height: 100/800*itemInsurs.height
            color: "#ffffff"

            Text {
                text: "120天款"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                y: parent.height/4 - height/2
                color: "#333333"
                font.pointSize: 15
            }
            Text {
                text: "¥ 68元"
                color: g_mColor
                font.pointSize: 14
                y: parent.height/4 - height/2 + 2
                anchors.right: parent.right
                anchors.rightMargin: 20/480*parent.width
            }
            Rectangle {
                height: 1
                color: "#efefef"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width - 35/480*parent.width
            }

            Text {
                color: "#999999"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                font.pointSize: 14
                text: "最高可保12万，保障期限120天。"
                anchors.top: parent.top
                anchors.topMargin: parent.height/4*3 - height/2
            }
        }

        Rectangle {
            id: rect180Day
            anchors.top: rect120Day.bottom
            anchors.topMargin: 20/800*itemInsurs.height
            width: parent.width
            height: 100/800*itemInsurs.height
            color: "#ffffff"

            Text {
                text: "180天款"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                y: parent.height/4 - height/2
                color: "#333333"
                font.pointSize: 15
            }
            Text {
                text: "¥ 78元"
                color: g_mColor
                font.pointSize: 14
                y: parent.height/4 - height/2 + 2
                anchors.right: parent.right
                anchors.rightMargin: 20/480*parent.width
            }
            Rectangle {
                height: 1
                color: "#efefef"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width - 35/480*parent.width
            }

            Text {
                color: "#999999"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                font.pointSize: 14
                text: "最高可保12万，保障期限180天。"
                anchors.top: parent.top
                anchors.topMargin: parent.height/4*3 - height/2
            }
        }

        Rectangle {
            id: rect360Day
            anchors.top: rect180Day.bottom
            anchors.topMargin: 20/800*itemInsurs.height
            width: parent.width
            height: 100/800*itemInsurs.height
            color: "#ffffff"

            Text {
                text: "360天款"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                y: parent.height/4 - height/2
                color: "#333333"
                font.pointSize: 15
            }
            Text {
                text: "¥ 88元"
                color: g_mColor
                font.pointSize: 14
                y: parent.height/4 - height/2 + 2
                anchors.right: parent.right
                anchors.rightMargin: 20/480*parent.width
            }
            Rectangle {
                height: 1
                color: "#efefef"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width - 35/480*parent.width
            }

            Text {
                color: "#999999"
                anchors.left: parent.left
                anchors.leftMargin: 20/480*parent.width
                font.pointSize: 14
                text: "最高可保15万，保障期限360天。"
                anchors.top: parent.top
                anchors.topMargin: parent.height/4*3 - height/2
            }
        }
    }
}
