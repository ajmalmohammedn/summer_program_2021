import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GivemeDebianinfo extends StatefulWidget {
  final itemlocation;
  final itemtitle;
  final itemsubtitle;

  GivemeDebianinfo({
    this.itemlocation,
    this.itemtitle,
    this.itemsubtitle,
  });

  @override
  _GivemeDebianinfoState createState() => _GivemeDebianinfoState();
}

class _GivemeDebianinfoState extends State<GivemeDebianinfo> {
  late String result = '';
  late String query;
  web(query) async {
    var url =
        Uri.http("65.0.81.124:8083", "/cgi-bin/mycode.py", {"cmd": query});
    var response = await http.get(url);
    setState(() {
      result = response.body;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            child: Icon(Icons.help_sharp),
            onTap: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 100.0,
            child: Center(child: Image.asset(widget.itemlocation)),
          ),
          Center(
            child: Text(
              "Output",
              style: TextStyle(
                fontSize: 32.0,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //output code.
          Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(2.0),
              color: Colors.white10,
              height: 360.0,
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      result,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "courier new",
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (value) => query = value,
              decoration: InputDecoration(
                hintText: "Enter a Command.",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Center(
              child: Container(
            child: ElevatedButton(
                onPressed: () {
                  web(query);
                },
                child: Text("RUN")),
          )),
        ],
      ),
    );
  }
}
