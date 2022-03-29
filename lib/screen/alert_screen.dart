import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  void displayDialogCupertino(context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
//AlertDialog es quien da formato a la alerta
          return AlertDialog(
             //Las acciones son los botones que tiene y las cosas que hacen estos botones
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancelar")),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancelar"))
              ],
              title: const Text("Soy un titulo"),
              content: Column(
//El mainAxisSize determina el tamaño de la alerta
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet dictum sit amet justo donec enim diam vulputate. Enim sed faucibus turpis in eu mi. Nibh cras pulvinar mattis nunc sed blandit libero. Cras tincidunt lobortis feugiat vivamus at augue eget arcu."),
                  FlutterLogo(size: 100),
                  SizedBox(height: 20),
                ],
              ));
        });
  }

//Este metodo nos ayuda a crear la AlertDialgo
  void displayDialog(BuildContext context) {
//Este widget nos permite mostrar una patanlla sobre la pantalla
    showDialog(
//El barrierDismissible permite cerrar el alert presionando en un costado
        barrierDismissible: true,
        context: context,
        builder: (context) {
//AlertDialog es quien da formato a la alerta
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
//Las acciones son los botones que tiene y las cosas que hacen estos botones
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancelar"))
              ],
              title: const Text("Soy un titulo"),
              content: Column(
//El mainAxisSize determina el tamaño de la alerta
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet dictum sit amet justo donec enim diam vulputate. Enim sed faucibus turpis in eu mi. Nibh cras pulvinar mattis nunc sed blandit libero. Cras tincidunt lobortis feugiat vivamus at augue eget arcu."),
                  FlutterLogo(size: 100),
                  SizedBox(height: 20),
                ],
              ));
        });
  }

  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: const Text("Soy una alerta"),
        onPressed: () {
//Este es un if donde indentifica que sistema operativo se esta usando, es necesario importar dart.io
          Platform.isAndroid
          ? displayDialog(context)
          : displayDialogCupertino(context);
        },
      )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
