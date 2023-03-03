import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/constants.dart' as Constants;

import 'python.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Python Bot')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: PythonCodeWidget(),
            ),
            ElevatedButton(
              child: Text('Executar'),
              onPressed: () {
                Process.run('python', ['script.py']).then((result) {
                  print(result.stdout);
                  print(result.stderr);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
