import 'package:componentes_flutter/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
//con el signo ? decimos que esta variable es opcional, ne nesesita configurar
// el lugar donde la variable se mostrara
  final String? subTitle;

  const CustomCardType2({Key? key, required this.imageUrl, this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
//El clipBehavior es para que los componentes dentro de la card no se salgan del area
      clipBehavior: Clip.antiAlias,
//El shadowColor es para poder modificar la sombra de la card
      shadowColor: AppTheme.primaryColor.withOpacity(.5),
//El shape no ayuda a dar forma al contorno de la card
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Column(
        children: [
//FadeInImage es un widget que nos permite trabajar con imagenes
           FadeInImage(
//Placeholder es la imagen que mostramos cuando esta cargando la otra imagen,
// es necesario ir a PUBSPEC.yaml y activar la parte de los assets, tambien
// tenemos que crear una carpeta ASSESTS ahi estara nuestra imagne de carga
            placeholder: const AssetImage("assets/jar-loading.gif"),
//NetworkImage es un widget que nos ayuda a optener una imagen de internet
            image: NetworkImage(imageUrl),
//Cuando las imagenes no son del mismo tamaño las siguietes varibles nos ayudan
// a definir el tamaño que deben respetar
// double.infinity dice que tome tod el largo disponible
            width: double.infinity,
//Height nos ayuda a determinar la altura maxima
            height: 250,
//Nos ayuda a que si el alto o el largo es mayor que la imagen, la imagen se expandira
            fit: BoxFit.cover,
//Esta funcion nos permite controlar la duracion de la AssetImagen
            fadeInDuration: const Duration(milliseconds: 1000),
          ),
//Con este if decimos que si se envia el nombre construya el container,
// importante tener un tab, funciona como las llaves
          if (subTitle != null)
            Container(
//Como el titulo es una variable opciona es necesario poner ?? y el valor por
// default en caso de que no se mande un titulo
              child: Text(subTitle ?? 'No title'),
              padding: const EdgeInsets.all(10),
            ),
        ],
      ),
    );
  }
}
