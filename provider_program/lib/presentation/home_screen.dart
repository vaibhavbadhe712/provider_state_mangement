import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_program/provider_controller/counter.dart';
import 'package:provider_program/provider_controller/routs_controller.dart';
import 'package:provider_program/provider_controller/toggle.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    final toggle = Provider.of<Toggle>(context);
    final route = Provider.of<routesController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('MultiProvider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Counter: ${counter.count}'),
            ElevatedButton(
              onPressed: counter.increment,
              child: Text('Increment Counter'),
            ),
            SizedBox(height: 20),
            Text('Toggle is: ${toggle.isOn ? 'ON' : 'OFF'}'),
            ElevatedButton(
              onPressed: toggle.toggle,
              child: Text('Toggle'),
            ),
            ElevatedButton(
              onPressed: () {
                route.gotoSecoundScrren(context);
              },
              child: Text('Go Next'),
            ),
          ],
        ),
      ),
    );
  }
}
