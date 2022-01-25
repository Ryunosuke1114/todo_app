import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.model.dart';

class AddPage extends StatelessWidget {

  final MainModel model;
  AddPage(this.model);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainModel>.value(
      value: model,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TODO追加'),
        ),
        body: Consumer<MainModel>(builder: (context, model, child) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "追加するTODO",
                  hintText: "アプリ開発",
                ),
                onChanged: (text) {
                  model.newTodoText = text;
                },
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  //firestoreに値を追加
                  model.add();
                  Navigator.pop(context);
                },
                child: Text('＋'),
              ),
            ]),
          );
        }),
      ),
    );
  }
}
