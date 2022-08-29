import 'package:flutter/material.dart';
import 'package:project_ex/first_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Padding(padding: EdgeInsets.only(top: 150)),
              const Text(
                "搭乗者・保険情報登録",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              RaisedButton(onPressed: () => {
                Navigator.pushReplacementNamed(context,'/first'),
              }, child: const Text('情報入力ページへ'),),
              /*RaisedButton(onPressed: () => {
                Navigator.pushReplacementNamed(context,'/next'),
              }, child: const Text('Nextページへ'),)*/
            ],
          ),
        ),
      ),
    );
  }
}