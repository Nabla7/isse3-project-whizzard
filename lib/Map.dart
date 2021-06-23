import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Row(

          children: <Widget>[
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ButtonTheme(
                  minWidth: 205,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Requirments'),
                      onPressed: () {
                        //TODO
                      },
                    )
                )),
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ButtonTheme(
                    minWidth: 205,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('New Toilet'),
                      onPressed: () {
                        //TODO
                      },
                    )
                )),
          ],
        ),
      ),
    );
  }
}