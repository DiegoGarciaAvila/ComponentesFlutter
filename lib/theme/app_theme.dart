import 'package:flutter/material.dart';

class AppTheme {
//Este es nuestro archivo para los diseños globales

  static const Color primaryColor = Colors.indigo;

//Esta funcion es para el metodo ligh,
  static final ThemeData lightTheam = ThemeData.light().copyWith(
//con textButtonTheme configuramos el stimo de los botones de texto
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: Colors.red)
    ),
//Esta funcion nos permite configurar el color global de la app
      primaryColor: Colors.indigo,
//Con appBarTheme configuramos los todos los Appbars
      appBarTheme: const AppBarTheme(color: primaryColor,
      ),
//Esto es para poder darle un stily a los floatingActionButton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
//
      ) ,
//Esta es para dar formato a los elevatedButton, nos sirve para hacer las alertas
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        primary: primaryColor
      )
    ),

    inputDecorationTheme: const InputDecorationTheme(
//Le damos estimo de que sea seleccionado
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,

        ),
      ),
//Le damos estilo cuando se selecciona el input
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
        )
      ),
      floatingLabelStyle: TextStyle(
        color: primaryColor
      ),
      hintStyle: TextStyle(
        color: primaryColor,
      ),
      helperStyle: TextStyle(
        color: primaryColor,
      ),
      labelStyle: TextStyle(
        color: primaryColor
      ),
      iconColor: primaryColor,
      suffixIconColor: primaryColor,

      )

  );



//Esta funciones es para el medoto dark , funciona igual que el metodo ligh
  static final ThemeData darkTheam = ThemeData.dark().copyWith(
      primaryColor: Colors.indigo,
      appBarTheme: const AppBarTheme(color: primaryColor),
      scaffoldBackgroundColor: Colors.black,

  );
}
