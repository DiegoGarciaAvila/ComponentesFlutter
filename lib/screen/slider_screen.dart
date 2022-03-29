import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _check=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Slider"),
        ),
//El singleChildScrollView es en caso de que la imagen sea muy grande
        body: Column(
          children: [
//El Slider es una linea que podemos manipular, con una variable podemos controlar el valor
//Con .adaptive, este widget se adaptara cuando sea IOs o android
            Slider.adaptive(
                max: 400,
                min: 10,
                value: _sliderValue,
                onChanged:
                _check ? (value) {
                   _sliderValue = value;
                   setState(() {});
                 }: null
                 ),

            Checkbox(value: _check, onChanged: (value){
              _check = value ?? true;
              setState(() {

              });
            }),

            SwitchListTile(value: _check, onChanged: (value){
              _check = value;
              setState(() {

              });
            }),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
//El fit es para indicar que la imagen no se salga de los parametros establecidos
                  fit:BoxFit.contain ,
                  width: _sliderValue,
                    image: NetworkImage("https://minisomx.vtexassets.com/arquivos/ids/175335-1600-1600?v=637497306181600000&width=1600&height=1600&aspect=true"),
                ),
              ),
            )
          ],
        ));
  }
}
