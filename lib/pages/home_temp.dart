import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = List<Widget>();

    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return options.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item),
            subtitle: Text('cualquier cosaa'),
            leading: Icon(Icons.ac_unit_outlined),
            trailing: Icon(Icons.arrow_right),
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
