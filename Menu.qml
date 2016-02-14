import QtQuick 2.0

Item {
    id: itemMenu
    width: parent.width
    height: parent.height
    z: 1000
    visible: false

    property int m_menuX: 0
    property int m_menuY: 0
    property int m_menuH: 60/800*itemMenu.height*5+10
    property int m_curVal: -1
    property string m_curText: "全部区域"
    //property string m_menuArr: []

    function clearAll() {
        lmMenu.clear()
    }

    function addItem(menuText, menuId) {
        //for(var i=0;i<m_menuArr.length;i++) {
            lmMenu.append({"menuText":menuText, "menuId":menuId})
        //}
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            itemMenu.visible = false
        }
    }

    ListView {
        id: lvMenu
        z: 1001
        x: m_menuX
        y: m_menuY
        width: 120/480*itemMenu.width
        height: m_menuH
        Component {
            id: dgMenu
            Rectangle {
                id: rectItem
                color: "#ffffff"
                height: 60/800*itemMenu.height
                width: 120/480*itemMenu.width

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        m_curText = txtMenuText.text
                        m_curVal = txtMenuId.text
                        itemMenu.visible = false
                    }
                }

                Text {
                    id: txtMenuId
                    text: menuId
                    visible: false
                }

                Text {
                    id: txtMenuText
                    text: menuText
                    anchors.centerIn: parent
                    font.pointSize: 15
                    color: "#333333"
                }

                Rectangle {
                    anchors.bottom: parent.bottom
                    height: 2
                    width: parent.width
                    color: "#e8e8e7"
                }
            }
        }
        delegate: dgMenu
        model: lmMenu
        ListModel {
            id: lmMenu
        }
    }

}
