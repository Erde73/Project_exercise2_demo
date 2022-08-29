import 'package:flutter/material.dart';
import 'package:project_ex/first_page.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NextPage'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(onPressed: () => {
                Navigator.pushReplacementNamed(context,'/home'),
              }, child: const Text('ホームへ')),
            ],
          ),
        ),
      ),
    );
  }
}