import 'dart:io';

import 'package:flutter/material.dart';
import 'package:music_media_player_flutter/helpers/filesystem_utils.dart';
import 'package:path_provider/path_provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String tempPath;
  List<Directory> list = List();

  getListDirectories() async {
//    Directory tempDir = await getListDirectories();
//    setState(() {
//      tempPath = tempDir.path;
//    });
    getStorageList().then((data) {
      setState(() {

        data.forEach((f) {
          //tempPath += "_______${f}______\n";
          tempPath = f.toString();

        });

        list = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    getListDirectories();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Player de Música ${list.length}",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.refresh),
          onPressed: getListDirectories,
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        //child: Text("${tempPath}"),
        child: ListView.builder(
            itemBuilder: (context, _) {
              return Container(
                child: Text("${tempPath}"),
              );
            },
            itemCount: list.length),
      ),
    );
  }
}
