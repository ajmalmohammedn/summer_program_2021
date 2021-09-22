import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:visitcity/pages/Bottom.dart';
import 'package:visitcity/pages/DrawerC.dart';
import 'package:visitcity/pages/Itemlist.dart';
import 'package:visitcity/pages/centos.dart';
import 'package:visitcity/pages/chat.dart';
import 'package:visitcity/pages/debian.dart';
import 'package:visitcity/pages/docker.dart';
import 'package:visitcity/pages/horizontalList.dart';
import 'package:visitcity/pages/linux.dart';
import 'package:visitcity/pages/redhat.dart';
import 'package:visitcity/pages/slider.dart';
import 'package:visitcity/pages/ubuntu.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "TerminalX",
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0.1,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),

      drawer: SideDrawer(), //from DrawerC.dart.
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyBottom()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: [
          Divider(thickness: 2),
          SliderListView(),
          Divider(thickness: 2),

          /*
          Center(
            child: Text(
              "",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          */
          //Padding(padding: EdgeInsets.all(4.0)),

          Text(
            "Up Comming Technologies...",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
            ),
          ),
          Divider(thickness: 2),
          Padding(padding: EdgeInsets.all(2.0)),
          SizedBox(
            height: 10.0,
          ),
          HorizontalList(),
          SizedBox(
            height: 10.0,
          ),
          Padding(padding: EdgeInsets.all(2.0)),
          Divider(thickness: 2),

          Container(
            child: ListView(
              children: [
                InkWell(
                  child: ItemList(
                    itemlocation: "images/docker.png",
                    itemtitle: "Docker",
                    itemsubtitle: "description",
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GivemeDockerinfo(
                                  itemlocation: "images/docker.png",
                                  itemtitle: "Docker",
                                  itemsubtitle: "description",
                                )));
                  },
                ),
                InkWell(
                  child: ItemList(
                    itemlocation: "images/centos.png",
                    itemtitle: "Centos",
                    itemsubtitle: "description",
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GivemeCentos(
                                  itemlocation: "images/centos.png",
                                  itemtitle: "Centos",
                                  itemsubtitle: "description",
                                )));
                  },
                ),
                InkWell(
                  child: ItemList(
                    itemlocation: "images/ubuntu.png",
                    itemtitle: "Ubuntu",
                    itemsubtitle: "description",
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GivemeUbuntuinfo(
                                  itemlocation: "images/ubuntu.png",
                                  itemtitle: "Ubuntu",
                                  itemsubtitle: "description",
                                )));
                  },
                ),
                InkWell(
                  child: ItemList(
                    itemlocation: "images/redhat.png",
                    itemtitle: "RedHat",
                    itemsubtitle: "description",
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GivemeRedhatinfo(
                                  itemlocation: "images/redhat.png",
                                  itemtitle: "RedHat",
                                  itemsubtitle: "description",
                                )));
                  },
                ),
                InkWell(
                  child: ItemList(
                    itemlocation: "images/debian.png",
                    itemtitle: "Debian",
                    itemsubtitle: "description",
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GivemeDebianinfo(
                                  itemlocation: "images/debian.png",
                                  itemtitle: "Debian",
                                  itemsubtitle: "description",
                                )));
                  },
                ),
                InkWell(
                  child: ItemList(
                    itemlocation: "images/linux.png",
                    itemtitle: "Linux",
                    itemsubtitle: "description",
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GivemeLinuxinfo(
                                  itemlocation: "images/linux.png",
                                  itemtitle: "Linux",
                                  itemsubtitle: "description",
                                )));
                  },
                ),
                InkWell(
                  child: ItemList(
                    itemlocation: "images/chat.png",
                    itemtitle: "Chat",
                    itemsubtitle: "description",
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TakemeToChat(
                                  itemlocation: "images/chat.png",
                                  itemtitle: "Chat",
                                  itemsubtitle: "description",
                                )));
                  },
                ),
              ],
            ),
            //color: Colors.amber,
            height: 520.0,
          ),
        ],
      ),
    );
  }
}
