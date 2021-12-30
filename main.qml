import QtQuick 2.12
import QtQuick.Window 2.12
import QtQml 2.12
import QtQuick.Controls 2.12
import QtMultimedia 5.12

Window {
    id: first_window
    width: 640
    height: 480
    visible: true
    title: qsTr("Orions-Control_Room")

property variant win;
    Timer {
        id:timer
           interval: 1000; running: true; repeat: false
           onTriggered: dialog.open()
       }
    Timer {
        id:timer1
           interval: 1000; running: false; repeat: false
           onTriggered:{
               popup.close()
               var component = Qt.createComponent("Control-room.qml");
                       win = component.createObject(first_window);
                       win.show();
           }
    }
    Rectangle{
        id:root
        SoundEffect {
               id: playSound
               source: "qrc:/beep-01a.wav"
           }
        Popup {
              id: popup
              x: 150
              y: 100
              width: 700
              height: 300
              //modal: true
              focus: false
              Column{
                  spacing: 10
              Row{

                  spacing: 20
                      Row{
                          spacing: 25
                          Column{
                              spacing :25
                              Button{
                                  width: 60
                                  height: 30
                                  text: "Ambulance"
                              }
                              Button{
                                  width: 60
                                  height: 30
                                  text: "Alarm"
                              }
                              Button{
                                  width: 60
                                  height: 30
                                  text: "ALL"
                              }
                              Button{
                                  width: 60
                                  height: 30
                                  text: "Ignore"
                              }
                              Button{
                                  width: 60
                                  height: 30
                                  text: "Audio Input"
                              }
                          }
                      Column{
                          spacing :25
                          Button{
                              width: 60
                              height: 30
                              text: "Police"
                              onClicked:{
                                  timer1.start()
                                  label1.text="Police Called"
                              }
                          }
                          Button{
                              width: 60
                              height: 30
                              text: "Fire"
                          }
                          Button{
                              width: 60
                              height: 30
                              text: "Ping Guard"
                          }
                          Button{
                              width: 60
                              height: 30
                              text: "Camera Views"
                          }
                          Label{
                              id:label1
                              width: 60
                              height: 40
                              font.pixelSize: 12


                          }
                      }
                      }
                      Video{
                          id:warning
                          height: 280
                          width: 510
                          anchors.left: parent.Left
                          autoLoad: true
                          autoPlay: true
                          focus: true
                          loops: 100
                          source: "qrc:/symbols/viode.avi"
                      }

              }

              }

              closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        }

        Dialog {
            id: dialog
            width: 130
            height: 80
            title: "Warning Level-1"
            Rectangle{
                color: "crimson"
                Button {
                    id:b1
                    text: "View"
                    height: 20
                    width: 45
                    onClicked:{
                        popup.open()
                        dialog.close()
                    }

                }
                Button {
                    text: "Ignore"
                    anchors.left: b1.right
                    height: 20
                    width: 45
                    onClicked: dialog.close()
                }
            }
        }


    Row{
        spacing: 8
    Column{
        spacing: 10
    AnimatedImage {
        width: 150
        height: 100
        playing: true
        source: "qrc:/symbols/imag1.webp"

    }
    AnimatedImage {
        width: 150
        height: 100
        playing: true
        source: "qrc:/symbols/imag2.webp"

    }
    AnimatedImage {
        width: 150
        height: 100
        playing: true
        source: "qrc:/symbols/imag5.webp"

    }

    AnimatedImage {
        width: 150
        height: 100
        playing: true
        source: "qrc:/symbols/image3.gif"

    }
    }
    Column{
        spacing: 10
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/img6.webp"

        }
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/img7.webp"

        }
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/imag5.webp"

        }
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/img8.webp"

        }

    }
    Column{
        spacing: 10
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/image3.gif"

        }
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/img9.webp"
        }
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/img10.webp"
        }
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/imag1.webp"

        }


    }
    Column{
        spacing: 10
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/img12.webp"

        }
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/img7.webp"

        }
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/img13.webp"

        }
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/img9.webp"
        }


    }
    Column{
        spacing: 10
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/imag5.webp"

        }
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/img14.webp"

        }

        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/img12.webp"

        }
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/imag5.webp"

        }


    }
    Column{
        spacing: 10
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/imag1.webp"

        }
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/imag1.webp"

        }
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/img7.webp"

        }
        AnimatedImage {
            width: 150
            height: 100
            playing: true
            source: "qrc:/symbols/img7.webp"

        }

    }

    }
}
}
