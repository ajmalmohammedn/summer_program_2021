import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  //const ItemList({Key? key}) : super(key: key);
  final itemlocation;
  final itemtitle;
  final itemsubtitle;

  ItemList({
    this.itemlocation,
    this.itemtitle,
    this.itemsubtitle,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 120.0,
        height: 120.0,
        child: Image.asset(itemlocation),
      ),
      title: Text(
        itemtitle,
        style: TextStyle(fontSize: 18.0),
      ),
      subtitle: Text(itemsubtitle),
      trailing: Icon(
        Icons.navigate_next,
        size: 30.0,
        color: Colors.black,
      ),
    );
  }
}
/*
class test extends StatelessWidget {
  List list = [
    {
      "location": "images/linux.png",
      "title": "Linux",
      "subtitle": "description",
    },
    {
      "location": "images/docker.png",
      "title": "Docker",
      "subtitle": "description",
      "prize": "5000",
    },
    {
      "location": "images/chat.png",
      "title": "Chat",
      "subtitle": "description",
      "prize": "5000",
    },
  ];
  //const test({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return ItemList(
          itemlocation: list[index]['location'],
          itemtitle: list[index]['title'],
          itemsubtitle: list[index]['subtitle'],
        );
      },
      itemCount: list.length,
    );
  }
}
*/