import 'package:flutter/widgets.dart';
import 'package:myapp/components/facility_info.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';

import '../../components/line_chart_1.dart';

class ReservationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      title: Text("시설 예약 페이지"),
      //actions: [
        //IconButton(onPressed: () {}, icon: Icon(Icons.person, color: Colors.white,)),
      //],
      headerWidget: headerWidget(context),
      //headerBottomBar: headerBottomBarWidget(),
      body: [
        Row(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Text("개인 이용시설", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20)),
          ]
        ),
        Divider(),
        teamListView(),
        Row(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Text("단체 이용시설", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20)),
          ]
        ),
        Divider(),
        personalListView(),
      ],
      //fullyStretchable: true,
      //expandedBody: Text("Expanded"),
    );
  }

  //Container headerBottomBarWidget() {
    //return Container(
      //child: Row(
        //mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.end,
        //crossAxisAlignment: CrossAxisAlignment.center,
        //children: [//설정 아이콘
          //IconButton(onPressed: () {}, icon: Icon(Icons.person, color: Colors.white),),
        //],
      //),
    //);
  //}

  Container headerWidget(BuildContext context) => Container(
    color: Colors.pink.shade200,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "시설 예약 페이지",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ],
        ),
        CircleAvatar(
          radius: 80,
          backgroundColor: Colors.white,
          child: Icon(Icons.person), foregroundColor: Colors.grey,
        ),
      ],
    ),
  );

  ListView teamListView() {
    return ListView.builder(
      padding: EdgeInsets.only(top: 0),
      physics: NeverScrollableScrollPhysics(),
      itemCount: teamFacility.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => Card(
        color: Colors.pink.shade100,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: teamFacility[index].icon, foregroundColor: Colors.pink.shade200,
          ),
          title: Text("${teamFacility[index].name}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: Text(teamFacility[index].intro),
        ),
      ),
    );
  }
  ListView personalListView() {
    return ListView.builder(
      padding: EdgeInsets.only(top: 0),
      physics: NeverScrollableScrollPhysics(),
      itemCount: personalFacility.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => Card(
        color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.pink.shade100,
            child: personalFacility[index].icon, foregroundColor: Colors.white,
          ),
          title: Text("${personalFacility[index].name}", style: TextStyle(color: Colors.pink.shade100, fontWeight: FontWeight.bold)),
          subtitle: Text(personalFacility[index].intro),
        ),
      ),
    );
  }
}