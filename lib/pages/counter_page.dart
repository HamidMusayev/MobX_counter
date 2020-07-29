import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';
import 'package:mobx_app/store/counter/counter.dart';

class CounterPage extends StatelessWidget {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter MobX"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Counter", style: TextStyle(fontSize: 40)),
          Observer(
              builder: (_) => Text("$counter",
                  style: TextStyle(fontSize: 30, color: Colors.blueGrey))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                  onPressed: counter.increment,
                  icon: Icon(Icons.add),
                  label: Text("Add")),
              FlatButton.icon(
                  onPressed: counter.decrement,
                  icon: Icon(Icons.remove),
                  label: Text("Remove"))
            ],
          )
        ],
      ),
    );
  }
}
