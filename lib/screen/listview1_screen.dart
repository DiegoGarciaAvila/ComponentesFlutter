import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);


//De esta forma creamos un arreglo
  final options = const ["Superman", "Batman", "Spiderman", "Iron man"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview"),
      ),
//El arreglo que creamos lo vamos a utilizar en el listview
      body: ListView(
        children: [
// con los dos puntos sacos los componentes de nuestro arreglo
          ...options
 //Se usa el map para crear un metodo lamda y meter cada componente
 // del arreglo en un listtile
              .map((e) => ListTile(
                    title: Text(e),
//Trailing es el icono
            trailing: const Icon(Icons.arrow_forward),
                  ))
              .toList()
        ],
      ),
    );
  }
}
