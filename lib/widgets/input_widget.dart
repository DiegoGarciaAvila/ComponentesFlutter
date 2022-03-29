import 'package:flutter/material.dart';

class input_widget extends StatelessWidget {
  final String hintText;
  final String helpetText;
  final String labelText;
  final IconData? icon;
  final IconData suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
//Estas variables sirven para controlar los formularios
  final String fromProperties;
  final Map<String, dynamic> formValues;

  const input_widget({
    Key? key,
    required this.hintText,
    required this.helpetText,
    required this.labelText,
    this.icon,
    required this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.fromProperties,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
//Esta funcion nos ayuda a poner el texto como contraseña
        obscureText: obscureText,
//Con esta funcion, indicamos el tipo de texto que vamos a mostrar en pantalla
        keyboardType: keyboardType,
//Selecciona el input
        autofocus: false,
//initialValue es el valor inicial que se va a mostrar en el input
        initialValue: "",
        textCapitalization: TextCapitalization.words,
//con onChanged podemos obtener la informacion que esta en el input, formulario
        onChanged: (value) {
//Con esta accion, decimos que va a recibir un nombre, el cual va a buscar en nuestro map
          formValues[fromProperties]=value;
          print(formValues);
        },
//Este metodo nos ayuda a validad nuestro input
        validator: (value) {
          if (value == null) return "Requerido";
          return value.length < 3 ? "Mas de tres" : null;
        },
//Con este metodo podemos hacer visible el mensaje de validacion
        autovalidateMode: AutovalidateMode.onUserInteraction,
//Con esta funcion podemos decorar el input
        decoration: InputDecoration(
//Es el texto que esta en gris
          hintText: hintText,
//Es   un texto debajo del input
          helperText: helpetText,
//Es un texto que esta arriba del input
          labelText: labelText,
          icon: icon == null ? null : Icon(icon),
          suffixIcon: Icon(suffixIcon),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.black,
//                   )
//                 ) ,
// //Con esta funciones le ponemos un contorno al input
//                 border: OutlineInputBorder(
//                   borderRadius:
//                       BorderRadius.only(bottomLeft: Radius.circular(10)),
//                 )
        ));
  }
}
