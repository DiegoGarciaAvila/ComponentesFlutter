import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  final options = const ["Superman", "Batman", "Spiderman", "Iron man"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//Este es el metodo appbar, se puede configurar con valores especificos
      appBar: AppBar(
        title: const Text("Listview 2"),
//La elvacion es la sombra que tiene
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
//Con el lisvire.separated podemos crear un linea en el diseño,
// tiene funciones requeridas
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(options[index]),
//El trailing es el icono que va al final del listTitle
              trailing: const Icon(Icons.arrow_forward),
//Esta es la funcion que dice lo que hace el listTitle al ser presionado
              onTap: (){

              },

            );
          },
          separatorBuilder:(BuildContext context, int index) => const Divider() ,
          itemCount: options.length),
    );
  }
}
