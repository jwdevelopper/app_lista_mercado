import 'package:app_lista_mercado/layout.dart';
import 'package:app_lista_mercado/pages/about.dart';
import 'package:app_lista_mercado/pages/home.dart';
import 'package:app_lista_mercado/pages/settings.dart';
import 'package:flutter/material.dart';

void main() => runApp(FoxSupermercado());

class FoxSupermercado extends StatelessWidget {

  final routes = <String, WidgetBuilder> {
    HomePage.tag: (context) => HomePage(),
    AboutPage.tag: (context) => AboutPage(),
    SettingsPage.tag: (context) => SettingsPage()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fox Supermercado',
      theme: ThemeData(
        primaryColor: Layout.primary(),
        accentColor: Layout.secondary(),
        brightness: Brightness.light,
        textTheme: TextTheme(
          //usado para textos grandes em caixa de dialogo
          headline5: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          //Formatação referente ao titulo
          headline6: TextStyle(fontSize: 20, fontStyle: FontStyle.italic, color: Layout.warning()),
          //tamanho do texto no aplicativo
          bodyText2: TextStyle(fontSize: 14)  
        )
      ),
      home: HomePage(),
      routes: routes,
    );
  }

}