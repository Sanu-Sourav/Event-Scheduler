/// First main page, named as main.dart

import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_MyApp();
}
class _MyApp extends State<MyApp> {
  final List<Widget> _list = [
    //Text('Event 1')
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.deepPurple[200],

          appBar: AppBar(
            title: Text('Event Scheduler'),
            backgroundColor: Colors.deepPurpleAccent,
          ),
          body:_list.length>0?
          ListView.builder(
            itemCount: _list.length,
            //itemBuilder: ((context, index) => _list[index]
            itemBuilder: (context, index) {
              return ListTile(
                title: Container(
                  alignment: Alignment(0,0),
                  child: _list[index],
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  color: Colors.white,
                ),
              );
            },
          )
              : Center(
          child: Text('No Events Scheduled'),
    ),
    floatingActionButton: Builder(
    builder: (context) {
    return FloatingActionButton(
    backgroundColor: Colors.deepPurpleAccent,
    onPressed: () async {
    String newText=await Navigator.of(context).push(MaterialPageRoute(builder: (context)=> NewEventScreen()));
    setState(() {
    _list.add(Text(newText));
    });
    },
    child: Icon(Icons.add),
    );
    }
    ),
    ),
    );
  }

}