import 'package:app_lista_mercado/pages/about.dart';
import 'package:app_lista_mercado/pages/home.dart';
import 'package:app_lista_mercado/pages/settings.dart';
import 'package:app_lista_mercado/widgets/home_list.dart';
import 'package:flutter/material.dart';

class Layout {
  static final pages = [HomePage.tag, AboutPage.tag, SettingsPage.tag];

  static int currItem = 0;

  static Scaffold getContent(BuildContext context, content) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primary(),
          title: Center(
            child: Text("Fox Supermercado"),
          ),
          actions: _getActions(context)),
      body: content,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currItem,
        fixedColor: primary(),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.tag_faces), label: 'Sobre'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Configurações'),
        ],
        onTap: (int i) {
          currItem = i;
          Navigator.of(context).pushNamed(pages[currItem]);
        },
      ),
    );
  }

  static List<Widget> _getActions(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    List<Widget> itens = [];
    //REGRA QUE EXIBE O BOTÃO DE ADICIONAR APENAS NA PAGINA HOME
    if (pages[currItem] != HomePage.tag) {
      return itens;
    }
    itens.add(GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            barrierDismissible: true, //TODO false

            builder: (BuildContext ctx) {
              final input = TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                    hintText: 'Nome',
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              );
              return AlertDialog(
                title: Text('Nova Lista'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      //Text('Nome'),
                      input
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(danger())),
                    child: Text(
                      'Cancelar',
                      style: TextStyle(color: light()),
                    ),
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primary())),
                    child: Text(
                      'Adicionar',
                      style: TextStyle(color: light()),
                    ),
                    onPressed: () {
                      HomeList.itens.add(ListTile(
                        leading: Icon(Icons.pages),
                        title: Text(_controller.text),
                        //subtitle: Text('É isso ai'),
                        trailing: Icon(Icons.more_vert),
                      ));
                      print('Dado => ' + _controller.text);
                      Navigator.of(ctx).popAndPushNamed(HomePage.tag);
                    },
                  ),
                ],
              );
            });
      },
      child: Icon(Icons.add),
    ));
    itens.add(Padding(padding: EdgeInsets.only(right: 20)));
    return itens;
  }

  static Color primary([double opacity = 1.0]) =>
      Color.fromRGBO(62, 63, 89, opacity);
  static Color secondary([double opacity = 1.0]) =>
      Color.fromRGBO(111, 168, 191, opacity);
  static Color light([double opacity = 1.0]) =>
      Color.fromRGBO(242, 234, 228, opacity);
  static Color dark([double opacity = 1.0]) =>
      Color.fromRGBO(51, 51, 51, opacity);
  static Color danger([double opacity = 1.0]) =>
      Color.fromRGBO(217, 74, 74, opacity);
  static Color success([double opacity = 1.0]) =>
      Color.fromRGBO(6, 166, 59, opacity);
  static Color info([double opacity = 1.0]) =>
      Color.fromRGBO(0, 122, 166, opacity);
  static Color warning([double opacity = 1.0]) =>
      Color.fromRGBO(166, 134, 0, opacity);
}
