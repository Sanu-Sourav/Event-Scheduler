///Second attached page, named as new_event.dart

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();

}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],appBar:  AppBar(
      backgroundColor: Colors.deepPurpleAccent,
      title: Text("New Event"),
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(40),),
            child: TextFormField(
              minLines: 1,
              maxLines: 10,
              keyboardType: TextInputType.multiline,
              cursorColor: Colors.white,
              controller: _textEditingController,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.event,
                  color: Colors.white,),
                label: Text('Event',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Builder(
              builder: (context) {
                return SizedBox(
                  width: 360,
                  height: 60,
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white54),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)
                            )
                        )
                    ),
                    onPressed: () {
                      String newEventText=_textEditingController.text;
                      Navigator.of(context).pop(newEventText);
                    }, child: Text('ADD',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  ),
                );
              }
          ),
        ],
      ),
    );
  }

}
