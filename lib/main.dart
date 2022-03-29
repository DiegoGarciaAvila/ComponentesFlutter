
import 'package:componentes_flutter/routes/app_routes.dart';
import 'package:componentes_flutter/theme/theme.dart';
import 'package:flutter/material.dart';
import 'screen/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Quita el banner del debug
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //Es la ruta incial de la app, la primer api que se muestra
      initialRoute: AppRoutes.initailRoute,

      //Aqui estan guardadas las rutas que tenemos en la app
      routes: AppRoutes.getMenuOptionsRoutes(),

      //Esta es la ruta por defaul, en caso de que una ruta no exista
      onGenerateRoute:(settings)=> AppRoutes.onGenerateRoute(settings),

      //Configuramos los estilos globales
      theme: AppTheme.lightTheam ,
    );
  }
}
