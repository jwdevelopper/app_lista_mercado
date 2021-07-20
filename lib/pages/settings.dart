import 'package:app_lista_mercado/layout.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static String tag = 'settings-page';

  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout.getContent(
      context,
      Center(
        child: Text(
          "Configurações",
          style: TextStyle(
            color: Layout.dark()
          ),),
      ),
    );
  }
}
