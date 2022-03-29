import 'package:flutter/material.dart';

class CircleAvatarScreen extends StatelessWidget {
  const CircleAvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
//El margin sirve para hacer una distancia entre dos widgets
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              child: Text("SM"),
            ),
          )
        ],
        title: const Text("Circle Avatar"),
      ),
			body: const Center(
				child: CircleAvatar(
          maxRadius: 150,
//Con el circleAvatar no podemos poner un fadeimage
// , con el backgroundImage colocamos la imagen
          backgroundImage: NetworkImage("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/spider-man-manos-fotogramas-1638388698.jpg?resize=768:*"),
        ),
			),
		);
  }
}
