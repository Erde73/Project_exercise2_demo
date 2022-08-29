import 'package:flutter/material.dart';
import 'package:project_ex/next_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _passwordFocusNode = FocusNode();
    final _form = GlobalKey<FormState>();
    String _username='init';
    String _username_read='';
    String _phonenum='';


    return Scaffold(
      appBar: AppBar(
        title: const Text('搭乗者情報入力ページ'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(labelText: '氏名',),
                onSaved: (value) {
                  _username = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'ふりがな',),
                onSaved: (value) {
                  _username_read = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '電話番号',),
                onSaved: (value) {
                  _phonenum = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '住所',),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '郵便番号(数字のみ)',),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '車両ナンバー',),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '自賠責保険会社名',),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '保険番号',),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '自動車保険会社名',),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '保険番号',),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '勤務先',),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '勤務先住所',),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '勤務先氏名',),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '勤務先電話番号',),
              ),
              RaisedButton(
                child: const Text('保存'),
                onPressed: () {
                  _form.currentState!.save();
                  print(_username);
                  print(_username_read);
                },
              ),
              RaisedButton(onPressed: () => {
                Navigator.pushReplacementNamed(context,'/home'),
              }, child: const Text('ホームへ'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}