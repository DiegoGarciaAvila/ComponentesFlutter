import 'package:componentes_flutter/routes/app_routes.dart';
import 'package:componentes_flutter/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Components_Flutter"),
      ),
//El listView.separed lo utilizamos para diseño de separacion
// tiene funciones requeridas
        body: ListView.separated(
            itemBuilder: (context, index) {
//Usamos el listTile para mostrar nuestos componentes
              return ListTile(
//leading es el icono que aparece al inicio del listView
                leading: Icon(AppRoutes.menuoption[index].icon, color: AppTheme.primaryColor),
                title: Text(AppRoutes.menuoption[index].name),
//leading es el icono que aparece al final del listView
                trailing: const Icon(Icons.arrow_forward_ios, color: AppTheme.primaryColor),
// Esta es una funcion, cuando se preciona la opcion
                onTap: () {

//Es una funcion para un ruta es especifico
                  // final route = MaterialPageRoute(builder: (context) {
                  //   return Listview1Screen();
                  // },);
//push es para un funcion es espefico
                  // Navigator.push(context, route);


//PushName, funciona a traves de las rutas utilizando su nombre
                  Navigator.pushNamed(context, AppRoutes.menuoption[index].route);

                },
              );
            },
//Esta funcion es para diseño, muestra una pequeña linea debajo de
// cada opcion
            separatorBuilder: (_, __) {
              return const Divider();
            },
//Con esta funcion podemos determinar el tamaño de las opciones
            itemCount: AppRoutes.menuoption.length));
  }
}
