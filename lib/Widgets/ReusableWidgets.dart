import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/Models/RoomData.dart';
import 'package:smart_home/Widgets/HomePage.dart';

double widthStep;
double heightStep;
int roomSelectedIndex = 0;

class DeviceWidget extends StatefulWidget {
  int deviceIndex;
  int roomIndex;

  DeviceWidget(this.deviceIndex, this.roomIndex);

  @override
  _DeviceWidgetState createState() => _DeviceWidgetState();
}

class _DeviceWidgetState extends State<DeviceWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthStep*roomData[widget.roomIndex]['devices'][widget.deviceIndex]['width'],
      height: heightStep*roomData[widget.roomIndex]['devices'][widget.deviceIndex]['height'],
      child: Card(
        elevation: 5,
        color: appThemeBlack? Colors.black: Colors.white,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: widthStep*10),
          borderRadius: BorderRadius.circular(widthStep*70),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(roomData[widget.roomIndex]['devices'][widget.deviceIndex]['icon'], color: roomData[widget.roomIndex]['devices'][widget.deviceIndex]['status']?Colors.green:Colors.grey, size: widthStep*80,),
                Transform.scale(
                  scale: 0.8,
                  child: CupertinoSwitch(
                    value: roomData[widget.roomIndex]['devices'][widget.deviceIndex]['status'],
                    trackColor: appThemeBlack?Colors.white:Colors.black,
                    onChanged: (bool value) { setState(() { roomData[widget.roomIndex]['devices'][widget.deviceIndex]['status'] = value; }); },
                  ),
                ),
              ],
            ),
            Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: widthStep*30, vertical: heightStep*15),
                  child: Text(roomData[widget.roomIndex]['devices'][widget.deviceIndex]['displayText'], style: TextStyle(color: appThemeBlack? Colors.white: Colors.black, fontSize: widthStep*50, fontWeight: FontWeight.bold),),
                ),
              elevation: 5,
              color: appThemeBlack? Colors.black: Colors.white,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                //side: BorderSide(color: Colors.white70, width: widthStep*3),
                borderRadius: BorderRadius.circular(widthStep*20),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: widthStep*20, vertical: heightStep*10),
                child: Text(roomData[widget.roomIndex]['devices'][widget.deviceIndex]['status']?
                roomData[widget.roomIndex]['devices'][widget.deviceIndex]['statusOn']:roomData[widget.roomIndex]['devices'][widget.deviceIndex]['statusOff'],
                  textAlign: TextAlign.center, style: TextStyle(
                    color: roomData[widget.roomIndex]['devices'][widget.deviceIndex]['status']?
                    Colors.green:Colors.grey, fontSize: widthStep*40, fontWeight: FontWeight.bold),),
              ),
              elevation: 5,
              color: appThemeBlack? Colors.black: Colors.white,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                //side: BorderSide(color: Colors.white70, width: widthStep*3),
                borderRadius: BorderRadius.circular(widthStep*20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoomWidget extends StatefulWidget {
  int roomIndex;
  Function tapFtn;


  RoomWidget(this.roomIndex, this.tapFtn);

  @override
  _RoomWidgetState createState() => _RoomWidgetState();
}

class _RoomWidgetState extends State<RoomWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.tapFtn,
      child: Container(
        width: widthStep*roomData[widget.roomIndex]['width'],
        height: heightStep*roomData[widget.roomIndex]['height'],
        child: Card(
          elevation: 5,
          color: appThemeBlack? Colors.black: Colors.white,
          shadowColor: roomData[widget.roomIndex]['selected']? Colors.black:Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: roomData[widget.roomIndex]['selected']? Colors.lightBlue: Colors.white12, width: widthStep*10),
            borderRadius: BorderRadius.circular(widthStep*50),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: widthStep*30, vertical: heightStep*15),
                  child: Text(roomData[widget.roomIndex]['name'], textAlign: TextAlign.center, style: TextStyle(color: appThemeBlack? Colors.white: Colors.black, fontSize: widthStep*50, fontWeight: FontWeight.bold),),
                ),
                elevation: 5,
                color: appThemeBlack? Colors.black: Colors.white,
                shadowColor: roomData[widget.roomIndex]['selected']? Colors.lightBlue: Colors.black,
                shape: RoundedRectangleBorder(
                  //side: BorderSide(color: Colors.white70, width: widthStep*3),
                  borderRadius: BorderRadius.circular(widthStep*20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

