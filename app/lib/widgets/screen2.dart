// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.zero, children: [
      Container(
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(50))),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              title: Text("DashBoard", style: TextStyle(color: Colors.white)),
              subtitle: Text("Good Morning",
                  style: TextStyle(color: Color.fromARGB(255, 200, 179, 179))),
              trailing: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 30),
          ])),
      Container(
        color: Theme.of(context).primaryColor,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
          child: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 40,
            mainAxisSpacing: 30,
            physics: NeverScrollableScrollPhysics(),
            children: [
              itemDashboard('Videos', Icons.play_arrow, Colors.red),
              itemDashboard(
                  'Analytics', Icons.auto_graph_rounded, Colors.black),
              itemDashboard('Comments', Icons.chat_bubble, Colors.brown),
              itemDashboard('Audience', Icons.person_2, Colors.blue),
              itemDashboard('Revenue', Icons.money, Colors.indigo),
              itemDashboard('Upload', Icons.add_circle, Colors.teal),
              itemDashboard('About', Icons.question_mark, Colors.brown),
              itemDashboard('Contact', Icons.phone, Colors.green)
            ],
          ),
        ),
      )
    ]));
  }

  itemDashboard(String title, IconData iconData, Color background) => Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(11),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Theme.of(context).primaryColor.withOpacity(.2),
                
                spreadRadius: 2,
                blurRadius: 4)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: background, shape: BoxShape.circle),
              child: Icon(
                iconData,
                color: Colors.white,
              )),
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(color: Color.fromARGB(255, 21, 20, 20)),
          )
        ],
      ));
}
