import QtQuick 2.5
import QtQuick.Controls 1.4

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
        contentHeight: parent.height + rectRegPhone.height

        Rectangle {
            id: rectRegPhone
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 20/480*itemRegister.width
            height: 500

            Image {
                id: imgLogo
                source: "images/red_envp_h.png"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 6/800*itemRegister.height
                width: 110/480*itemRegister.width
                height: width
            }

            TextField {
                id: txfPhone
                width: parent.width
                height: 50/800*itemRegister.height
                anchors.top: imgLogo.bottom
                anchors.topMargin: 10/800*itemRegister.height
            }

            TextField {
                id: txfTestCode
                width: txfPhone.width*2/3
                height: 50/800*itemRegister.height
                anchors.top: txfPhone.bottom
                anchors.topMargin: 10/800*itemRegister.height
            }

            Rectangle {
                id: btnGetCode
                height: txfTestCode.height
                width: txfPhone.width - txfTestCode.width - anchors.leftMargin
                anchors.left: txfTestCode.right
                anchors.leftMargin: 4/480*itemRegister.width
                y: txfTestCode.y
                border.color: g_mColor
                border.width: 1
                Text {
                    anchors.centerIn: parent
                    font.pointSize: 12
                    color: "#666666"
                    text: "获取验证码"
                }
            }

            Rectangle {
                id: rectDetail
                anchors.top: txfTestCode.bottom
                anchors.topMargin: 10/800*itemRegister.height
                width: txfPhone.width
                anchors.horizontalCenter: parent.horizontalCenter
                height: 400/800*itemRegister.height
            }
        }

        Rectangle {
            id: rectRegInfo
            anchors.top: rectRegPhone.bottom
            anchors.topMargin: 10/800*itemRegister.height
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 20/480*itemRegister.width
            height: 400/800*itemRegister.height
            TextField {
                id: txfUid
            }
            TextField {
                id: txfPwd
            }
        }

        Rectangle {
            id: rectRegInfo
            anchors.top: rectRegPhone.bottom
            anchors.topMargin: 10/800*itemRegister.height
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 20/480*itemRegister.width
            height: 400/800*itemRegister.height
            TextField {
                id: txfUid
            }
            TextField {
                id: txfPwd
            }
        }
    }
}
