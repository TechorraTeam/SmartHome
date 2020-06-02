import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/Models/RoomData.dart';
import 'package:smart_home/Widgets/ReusableWidgets.dart';

bool appThemeBlack = true;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation == Orientation.portrait) {
      widthStep = MediaQuery
          .of(context)
          .size
          .width / 1000;
      heightStep = MediaQuery
          .of(context)
          .size
          .height / 1000;
    }
    else{
      widthStep = MediaQuery
          .of(context)
          .size
          .height / 1000;
      heightStep = MediaQuery
          .of(context)
          .size
          .width / 1000;
    }
    return Scaffold(
      body: MediaQuery.of(context).orientation == Orientation.portrait?
        MainBody():
        SingleChildScrollView(child: MainBody(),),
    );
  }
}

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: appThemeBlack? Colors.black87 : Colors.white,
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(height: heightStep*30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: heightStep*1,),

            Transform.scale(
              scale: 0.8,
              child: CupertinoSwitch(
                value: appThemeBlack,
                trackColor: appThemeBlack?Colors.white:Colors.black,
                activeColor: appThemeBlack?Colors.white:Colors.black,
                onChanged: (bool value) { setState(() { appThemeBlack = value; }); },
              ),
            ),
          ],
        ),
        Text('ROOMS', style: TextStyle(color: appThemeBlack? Colors.white: Colors.black, fontSize: widthStep*50, fontWeight: FontWeight.bold),),
        Container(
          height: heightStep*300,
          child: ListView.builder(itemBuilder: (BuildContext ctxt, int Index){
            return RoomWidget(Index, (){

              setState(() {
                roomData[roomSelectedIndex]['selected'] = false;
                roomData[Index]['selected'] = true;
                roomSelectedIndex = roomData[Index]['id'];
              });

            },);
          },
            itemCount: roomData.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
        Text('DEVICES', style: TextStyle(color: appThemeBlack? Colors.white: Colors.black, fontSize: widthStep*50, fontWeight: FontWeight.bold),),
        Container(
          height: heightStep*300,
          child: ListView.builder(itemBuilder: (BuildContext ctxt, int Index){
            return DeviceWidget(Index,roomSelectedIndex);
          },
            itemCount: roomData[roomSelectedIndex]['devices'].length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
        )
    );
  }
}
