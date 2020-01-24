import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:music_media_player_flutter/app/app_controller.dart';
import 'package:music_media_player_flutter/app/app_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = AppController();
  AppController appModule = AppController();

  @override
  Widget build(BuildContext context) {

    double altura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title + "${altura}"),
      ),
      body: ListView.builder(
        itemCount: appModule.pessoas.length,
        itemBuilder: (_, index){
          return ListTile(
            title: Text(appModule.pessoas[index] + "fdsfsdf"),
            onTap: ()=>Navigator.pushNamed(context, 'details/$index'),
          );
        },
      ),
//      body: Column(
//        children: <Widget>[
//          Observer(
//            builder: (_){
//              return Text(appModule.value.toString());
//              //return Text(controller.value.toString());
//            },
//          )
//        ],
//      ),
      floatingActionButton: RaisedButton(
        onPressed: controller.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
