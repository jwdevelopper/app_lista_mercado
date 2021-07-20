import 'package:app_lista_mercado/layout.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static String tag = 'about-page';

  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout.getContent(
      context,
      Center(
        child: Text(
          "Este Aplicativo foi criado por Fox Cloud softares",
          style: TextStyle(
            color: Layout.dark()
          ),),
      ),
    );
  }
}
