import 'package:flutter/material.dart';

class TakemeToChat extends StatelessWidget {
  final itemlocation;
  final itemtitle;
  final itemsubtitle;
  TakemeToChat({
    this.itemlocation,
    this.itemtitle,
    this.itemsubtitle,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Container(
            height: 200.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(itemlocation),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
