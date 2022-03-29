import 'package:componentes_flutter/theme/theme.dart';
import 'package:componentes_flutter/widgets/card2_widget.dart';
import 'package:componentes_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cards"),
        ),
//El pading es un widget que nos ayuda a crear margenes de adentre hacia afuera
        body: Padding(
//Padding es la funcion, EdgeInsers es la fomra que la que
// decimos donde y comoqueremos el padding
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: const [
              CustomCardType1(),
//SizedBox es un widget que nos permite hacer una separacion entre widgets
              SizedBox(height: 20,),
              CustomCardType2(imageUrl: 'https://www.nationalgeographic.com.es/medio/2018/02/27/playa-de-isuntza-lekeitio__1280x720.jpg', subTitle: 'Soy un paisaje del mar',),
              SizedBox(height: 20,),
              CustomCardType2(imageUrl: 'https://astelus.com/wp-content/viajes/Lago-Moraine-Parque-Nacional-Banff-Alberta-Canada-1152x759.jpg', subTitle: 'Soy un paisahe de las montañas',),
              SizedBox(height: 20,),
              CustomCardType2(imageUrl: 'https://www.xtrafondos.com/wallpapers/vertical/paisaje-digital-en-atardecer-5846.jpg',)

            ],
          ),
        ));
  }
}


