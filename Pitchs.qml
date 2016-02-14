import QtQuick 2.0

Item {
    id: itemPitchs
    z: 100
    width: parent.width
    height: parent.height

    Rectangle {
        anchors.fill: parent
        color: "#E8E8E7"
        z: 101
    }

    function load() {
        for(var i=0;i<15;i++) {
            listmodel.append({
                                 "pitchName":"银河产业园足球场",
                                 "pitchAddr":"北海市海城区银河科技园后面场地",
                                 "pitchDrit":"海城区",
                                 "imgUrl":"images/item_def.jpg"
                             })
        }
        console.log(listview.count)
    }

    HeadItem {
        id: head
        visible: true
        z: 103
    }

    Rectangle {
        id: menu
        z: 103
        anchors.top: head.bottom
        width: parent.width
        height: 65/800*parent.height
        color: "#ffffff"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if(mouseX < parent.width/2) {
                    itemMenuDrit.m_menuX = parent.x
                    itemMenuDrit.m_menuY = parent.y + parent.height
                    itemMenuDrit.m_menuH = 60/800*itemPitchs.height*5+10
                    itemMenuDrit.clearAll()
                    itemMenuDrit.addItem("全部区域", 0)
                    itemMenuDrit.addItem("海城区", 1)
                    itemMenuDrit.addItem("银海区", 2)
                    itemMenuDrit.addItem("铁山港区", 3)
                    itemMenuDrit.addItem("工业园区", 4)
                    itemMenuDrit.visible = true
                }
                else {
                    itemMenuType.m_menuX = line_1.x + 2
                    itemMenuType.m_menuY = parent.y + parent.height
                    itemMenuType.m_menuH = 60/800*itemPitchs.height*4+8
                    itemMenuType.clearAll()
                    itemMenuType.addItem("全部类型", 0)
                    itemMenuType.addItem("5人场", 1)
                    itemMenuType.addItem("7人场", 2)
                    itemMenuType.addItem("11人场", 3)
                    itemMenuType.visible = true
                }
            }
        }

        Text {
            id: leftMenu
            x: parent.width/4 - width/2
            anchors.verticalCenter: parent.verticalCenter
            text: itemMenuDrit.m_curText//qsTr("全部区域")
            color: "#333333"
            font.pointSize: 18
        }

        Text {
            id: rightMenu
            x: parent.width/2 + parent.width/4 - width/2
            anchors.verticalCenter: parent.verticalCenter
            text: itemMenuType.m_curText//qsTr("全部类型")
            color: "#333333"
            font.pointSize: 18
        }

        Rectangle {
            id: line_1
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            width: 2
            color: "#E8E8E7"
            height: parent.height - 12/800*itemPitchs.height
        }
    }

    Component {
        id: contactDelegate
        Item {
            MouseArea
            {
                anchors.fill: parent
                onClicked: {
                    listview.currentIndex = index
                    itemPitch.m_pitchName = txtName.text
                    stackMain.push(itemPitch);
                }
            }

            Text {
                id: txtId
                text: "0"
                visible: false
            }

            width: listview.width
            height: 150/740*listview.height//根据listview的高度算出item高度

            Rectangle {
                height: 2
                width: parent.width
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 2/480*parent.width
                anchors.rightMargin: 2/480*parent.width
                color: "#e6e6e6"
            }
            Rectangle {
                id: rectImage
                width: 155/480*listview.width
                height: 116/740*listview.height
                color: "#ffffff"
                anchors.left: parent.left
                anchors.leftMargin: 7/480*parent.width
                anchors.verticalCenter: parent.verticalCenter
                Image {
                    source: imgUrl
                    anchors.fill: parent
                    fillMode: Image.Stretch
                }
                Rectangle {
                    anchors.fill: parent
                    border.color: "#ffffff"
                    border.width: 2/480*itemPitchs.width
                    color: "#00000000"
                    z: 1
                }
            }
            Rectangle {
                id: txtRect
                anchors.left: rectImage.right
                anchors.leftMargin: 8/480*parent.width
                anchors.verticalCenter: parent.verticalCenter
                width: 300/480*listview.width
                height: 122/740*listview.height
                color: "#00000000"

                Text {
                    id: txtName
                    width: parent.width
                    text: pitchName
                    font.pointSize: 16
                    color: "#333333"
                    font.family: "微软雅黑"
                    anchors.top: parent.top
                    anchors.topMargin: 3/112*parent.height
                }

                Text {
                    id: txtAddr
                    text: pitchAddr
                    width: parent.width
                    color: "#666666"
                    font.family: "微软雅黑"
                    anchors.top: txtName.bottom
                    anchors.topMargin: 6/112*parent.height
                    font.pointSize: 14
                }

                Text {
                    id: txtDrit
                    width: 200/316*parent.width
                    color: "#999999"
                    text: pitchDrit
                    anchors.top: txtAddr.bottom
                    anchors.topMargin: 6/112*parent.height
                    font.pointSize: 14
                    font.family: "黑体"
                }

                Text {
                    id: txtState
                    width: 116/316*parent.width
                    text: "预定"
                    anchors.bottom: txtDrit.bottom
                    anchors.right: parent.right
                    anchors.rightMargin: 4/316*parent.width
                    verticalAlignment: Text.AlignBottom
                    horizontalAlignment: Text.AlignRight
                    font.pointSize: 13
                    font.family: "黑体"
                    color: "#f75b47"
                }
            }
        }
    }

    Component {
        id: highlight
        Rectangle {
            width: listview.width
            height: 150/740*listview.height
            color: g_bColor
            radius: 10
            y: listview.currentItem.y
            Behavior on y {
                SpringAnimation {
                    spring: 3
                    damping: 0.2
                }
            }
        }
    }

    Rectangle {
        id: rectBody
        z: 102
        width: parent.width
        anchors.top: menu.bottom
        anchors.topMargin: 14/800*parent.height
        anchors.bottom: parent.bottom
        color: "#ffffff"
        ListView {
            id: listview
            z: 100
            width: parent.width
            height: parent.height
            model: listmodel
            delegate: contactDelegate
            highlight: highlight
            highlightFollowsCurrentItem: false
        }
    }

    ListModel {
        id: listmodel
    }

    Menu {
        id: itemMenuDrit
        visible: false
    }
    Menu {
        id: itemMenuType
        visible: false
        m_curText: "全部类型"
    }

    Pitch {
        id: itemPitch
        visible: false
    }
}
