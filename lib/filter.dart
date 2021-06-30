import 'package:flutter/material.dart';
import 'Map.dart';

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Toilet Requirement Lists"),
          ),
          body: SafeArea(
              child : Center(

                child:CheckboxWidget(),

              )
          )
      ),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetState createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State {

  Map<String, bool> values = {
    'Squatting toilet': false,
    'Child toilet': false,
    'Disability': false,
    'Bidet/ Washlet': false,
  };

  var tmpArray = [];

  getCheckboxItems(){

    values.forEach((key, value) {
      if(value == true)
      {
        tmpArray.add(key);
      }
    });

    // Printing all selected items on Terminal screen.
    print(tmpArray);
    // Here you will get all your selected Checkbox items.

    // Clear array after use.
    tmpArray.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column (children: <Widget>[

      RaisedButton(
        child: Text(" Find toilet based on requirements ", style: TextStyle(fontSize: 18),),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyApp()),
          );
      },
        color: Colors.deepOrange,
        textColor: Colors.white,
        splashColor: Colors.grey,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      ),

      Expanded(
        child :
        ListView(
          children: values.keys.map((String key) {
            return new CheckboxListTile(
              title: new Text(key),
              value: values[key],
              activeColor: Colors.pink,
              checkColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  values[key] = value!;
                });
              },
            );
          }).toList(),
        ),
      ),]);
  }
}