import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter MobX"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Counter", style: TextStyle(fontSize: 30)),
            Text("0", style: TextStyle(fontSize: 30)),
            Row(
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text("Add")),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.remove),
                    label: Text("Remove"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
