import 'package:app_lista_mercado/layout.dart';
import 'package:app_lista_mercado/pages/about.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static String tag = 'home-page';

  

  HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final content = Center(
    child: Column(
      children: [
        Text("Pagina Inicial"),
        ElevatedButton(
          child: Text('Sobre'),
          onPressed: (){
            Navigator.of(context).pushNamed(AboutPage.tag);
          },
        ),
      ],
    )
  );
    return Layout.getContent(context, content);
  }
}