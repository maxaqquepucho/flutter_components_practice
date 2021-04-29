import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _listaNumeros = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listas')),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index) {
        final image = _listaNumeros[index];
        String urlAPI = 'https://picsum.photos/200/100/?image=$image';
        return FadeInImage(
          image: NetworkImage(urlAPI),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }
}
