import 'package:app_lista_mercado/layout.dart';
import 'package:app_lista_mercado/pages/about.dart';
import 'package:app_lista_mercado/widgets/home_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static String tag = 'home-page';

  

  HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final content = HomeList();
    return Layout.getContent(context, content);
  }
}