import 'package:flutter/material.dart';

void main() => runApp(HelloWorld());

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Example Application'),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Hello World!!'),
            behavior: SnackBarBehavior.floating,
            duration: Duration(milliseconds: 1000),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {},
            ),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text('Click This Button'),
      ),
    );
  }
}
