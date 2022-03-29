import 'dart:math';

import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {

  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {

  double _width =100;
  double _height =100;
  Color _color=Colors.red;
  BorderRadiusGeometry _borderRadiusGeometry=BorderRadius.circular(10);

//Este metodo nos ayuda a cambiar los valores del conteiner
  void onChangeShape(){
//La varialble random nos da valores numeros aleatorios,
// el .nextDouble da valores de 0 a 1,
// el .toDouble es para parcear el valor

    _width = Random().nextInt(350).toDouble()+70;
    _height= Random().nextInt(350).toDouble()+70;
//Color.fromARGB le mandamos los valores de los colores la leta b es de la
// opacidad del color de 0 a 1, el 255 es el valor maximo para los colores
    _color= Color.fromARGB(
        Random().nextInt(255).toInt()+1,
        Random().nextInt(255).toInt()+1,
        Random().nextInt(255).toInt()+1,
        1);
    _borderRadiusGeometry = BorderRadius.circular(Random().nextInt(100).toDouble()+10);
    setState(() {
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
      ),
			body: Center(
//EL animated Container nos sirve para animar el cambio del estado del conteiner
//es necesario el metodo duration
//el metodo curve nos ayuda a indicar que tipo de animacion puede ser https://api.flutter.dev/flutter/animation/Curves-class.html
				child: AnimatedContainer(
          curve: Curves.easeInOut,
          duration: Duration(seconds: 1),
          height: _height,
          width: _width,
//Este metodo es para poder hacer una decoracion al container          
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadiusGeometry,
          ),
        ),
			),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.change_circle),
          onPressed: (){
            onChangeShape();
            
          }
      ),
		);
  }
}
