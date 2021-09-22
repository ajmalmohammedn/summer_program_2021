import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GivemeDockerinfo extends StatefulWidget {
  final itemlocation;
  final itemtitle;
  final itemsubtitle;
  GivemeDockerinfo({this.itemlocation, this.itemtitle, this.itemsubtitle});

  @override
  _GivemeDockerinfoState createState() => _GivemeDockerinfoState();
}

class _GivemeDockerinfoState extends State<GivemeDockerinfo> {
  late String containerName;
  late String imageName;
  late String temp = '';
  late String query;
  web(query) async {
    var url = Uri.http(
      "65.0.81.124",
      "/cgi-bin/mycode.py",
      {"cmd": query},
    );
    var response = await http.get(url);
    setState(() {
      temp = response.body;
      print(temp);
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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              //decoration: BoxDecoration(color: Colors.blueGrey),
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
              margin: EdgeInsets.only(bottom: 0.0),
              child: Center(
                child: Text(
                  "DockerApp",
                  style: TextStyle(
                    //fontFamily: "courier new",
                    fontWeight: FontWeight.bold,
                    //color: Colors.white,
                    fontSize: 32.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            /*Container(
              height: 40,
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: InkWell(
                child: Center(
                    child: Text(
                  "Create Container",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                )),
                onTap: () {},
              ),
            ),
            */
            Card(
              child: InkWell(
                child: ListTile(
                  leading: Container(
                    child: Icon(Icons.create),
                  ),
                  title:
                      Text("Add Container", style: TextStyle(fontSize: 22.0)),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scaffold(
                                body: AlertDialog(
                                  title: Text("Create Container"),
                                  actions: [
                                    TextField(
                                      autofocus: true,
                                      onChanged: (value) =>
                                          containerName = value,
                                      decoration: InputDecoration(
                                        hintText: "Container Name",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.all(2.0)),
                                    TextField(
                                      onChanged: (value) => imageName = value,
                                      decoration: InputDecoration(
                                        hintText: "Image Name",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: Text(
                                              "Cancle",
                                              style: TextStyle(fontSize: 18.0),
                                            )),
                                        TextButton(
                                            onPressed: () {
                                              query =
                                                  "sudo docker run -dit --name $containerName  $imageName";
                                              web(query);

                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "Submit",
                                              style: TextStyle(fontSize: 18.0),
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              )));
                },
              ),
            ),
            Card(
              child: InkWell(
                child: ListTile(
                  leading: Container(
                    child: Icon(Icons.delete_forever),
                  ),
                  title: Text("Delete Container",
                      style: TextStyle(fontSize: 22.0)),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scaffold(
                                body: AlertDialog(
                                  title: Text("Delete Container"),
                                  actions: [
                                    TextField(
                                      autofocus: true,
                                      onChanged: (value) =>
                                          containerName = value,
                                      decoration: InputDecoration(
                                        hintText: "Container Name",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: Text(
                                              "Cancle",
                                              style: TextStyle(fontSize: 18.0),
                                            )),
                                        TextButton(
                                            onPressed: () {
                                              query =
                                                  "sudo docker rm -f $containerName ";
                                              web(query);

                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "Submit",
                                              style: TextStyle(fontSize: 18.0),
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              )));
                },
              ),
            ),
            Card(
              child: InkWell(
                child: ListTile(
                  leading: Container(
                    child: Icon(Icons.list_alt),
                  ),
                  title: Text("List Active Container",
                      style: TextStyle(fontSize: 22.0)),
                ),
                onTap: () {
                  query = "sudo docker ps ";
                  web(query);
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: InkWell(
                child: ListTile(
                  leading: Container(
                    child: Icon(Icons.list),
                  ),
                  title: Text("List all Container",
                      style: TextStyle(fontSize: 22.0)),
                ),
                onTap: () {
                  query = "sudo docker ps -a";
                  web(query);
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: InkWell(
                child: ListTile(
                  leading: Container(
                    child: Icon(Icons.network_check),
                  ),
                  title: Text("List Network", style: TextStyle(fontSize: 22.0)),
                ),
                onTap: () {
                  query = "sudo docker network ls";
                  web(query);
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: InkWell(
                child: ListTile(
                  leading: Container(child: Icon(Icons.help_outline)),
                  title: Text("Help", style: TextStyle(fontSize: 22.0)),
                ),
                onTap: () {
                  query = "docker help";
                  web(query);
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: InkWell(
                child: ListTile(
                  leading: Container(
                    child: Icon(Icons.star_outline_sharp),
                  ),
                  title: Text("Status", style: TextStyle(fontSize: 22.0)),
                ),
                onTap: () {
                  query = "sudo systemctl status docker ";
                  web(query);
                  Navigator.pop(context);
                },
              ),
            ),
            InkWell(
              child: Icon(
                Icons.arrow_back,
                size: 45.0,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back,
                    size: 35.0,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
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
          Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(2.0),
              color: Colors.white10,
              height: 320.0,
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      temp,
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
