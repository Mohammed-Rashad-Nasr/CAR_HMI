import QtQuick 2.2
import QtQuick.Window 2.2
import QtGraphicalEffects 1.15
//import QtQuick3D 1.15
//import Qt3D.Core 2.0
//import Qt3D.Render 2.0

Window {
    width: 1920
    height: 585
    visible: true
    color: "black"
//    Gauge{
//        mcolor: "red"
//        minValue: 0
//        maxValue: 100
//        paramValue: 20
//    }

    Image {
        id: background
        source: "bg.jpg"
        anchors.fill: parent

        Battery{
           // width : 220
            //height: 220
           scale : 0.45
            x:1270
            y:0
            socValue: 75
            sohValue: 75
            sotValue: 70
        }
        Speed_Gauge{
          scale: 0.45
          x:-150
          y:-215
          value1: 180
          smode: "driving"
        }
        Footer{
            id : footer
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
        }

    }
    Image {
        id: car
        source: "car_model.png"
        anchors.horizontalCenter: parent.horizontalCenter
        scale:0.5
        opacity:0.8
        y:100
    }


}
