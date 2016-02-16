import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.1
import QtQuick.Dialogs 1.2

Window {
    id: winMain
    visible: true
    width: isMobile() ? Screen.width : 480
    height: isMobile() ? Screen.height : 800
    property int g_mid: 47//登录后存储用户id
    property int g_mnum: 0//
    property string g_mname: ""//
    property string g_mcname: "曼联大腿"//
    property string g_phone: ""//
    property string g_mColor: "#E14546"//"#7c7c7c"
    property string g_bColor: "#FFE4E1"//"#ebf9ec"

    onActiveFocusItemChanged: {
        if (activeFocusItem !== null
                && activeFocusItem.Keys !== undefined)
        {
            activeFocusItem.Keys.onReleased.disconnect(onKeyReleased)
        }
        if (activeFocusItem !== null)
        {
            activeFocusItem.Keys.onReleased.connect(onKeyReleased)
        }
    }

    function onKeyReleased(event) {
        if (event.key === Qt.Key_Back
                || event.key === Qt.Key_Escape)
        {
            console.log("accepted now")
            if(stackMain.depth > 1) {
                stackMain.pop()
            }
            else {
                msgDlgQuit.open()
            }

            event.accepted = true
        }
    }

    function isMobile() {
        var b = false
        switch(Qt.platform.os) {
        case "ios":
            b = true
            break
        case "android":
            b = true
            break
        }
        return b
    }

    MessageDialog {
        id: msgDlgQuit
        standardButtons: StandardButton.Yes | StandardButton.No
        modality: Qt.ApplicationModal
        title: "确认退出"
        text: "你确定要退出程序吗？"
        onYes: {
            Qt.quit();
        }
    }

    Item {
        id: itemMain
        width: parent.width
        height: parent.height
        z: 100

        Component.onCompleted: {
            console.log(Qt.platform.os)
            itemPitchs.load()
        }

        Pitchs {
            id: itemPitchs
            visible: false
        }

        Players {
            id: itemPlayers
            visible: false
        }

        Insurs {
            id: itemInsurs
            visible: false
        }

        Games {
            id: itemGames
            visible: false
        }

        Member {
            id: itemMember
            visible: false
        }

        StackView {
            z: 101
            id: stackMain
            width: parent.width
            height: parent.height - tabFoot.height
            anchors.top: parent.top
            anchors.bottom: tabFoot.top
            property var home: null
            initialItem: itemPitchs
        }

        FootMenu {
            z: 1000
            id: tabFoot
            anchors.bottom: parent.bottom
        }
    }
}
