import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  static List<Widget> itens = [];

  const HomeList({Key? key}) : super(key: key);

  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  List<Widget> def = [];

  @override
  Widget build(BuildContext context) {
    List<Widget> values = [];
    if (HomeList.itens.length == 0) {
      values.add(ListTile(
        leading: Icon(Icons.pages),
        title: Text('Nenhuma Lista adicionada!'),
        trailing: Icon(Icons.more_vert),
      ));
    }
    return ListView(shrinkWrap: true, children: (HomeList.itens.length == 0) ? values : HomeList.itens);
  }
}
