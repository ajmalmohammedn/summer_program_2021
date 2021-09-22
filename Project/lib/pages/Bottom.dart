import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyBottom extends StatelessWidget {
  web() async {
    var url = Uri.http("3.108.227.176", "/cgi-bin/mycode.py");
    var response = await http.get(url);
    print(response.body);
  }

  const MyBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: TextButton(
          child: Text('chekckme '),
          onPressed: () {
            web();
          },
        ),
      ),
    );
  }
}
