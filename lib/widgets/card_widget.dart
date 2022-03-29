import 'package:componentes_flutter/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

//Card es un widget especial, nos da un efecto de diseño
    return Card(
      child: Column(children: [
        const ListTile(
          title: Text("Soy el titulo de la card"),
          subtitle: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet dictum sit amet justo donec enim diam vulputate. Enim sed faucibus turpis in eu mi. Nibh cras pulvinar mattis nunc sed blandit libero. Cras tincidunt lobortis feugiat vivamus at augue eget arcu."),
          leading: Icon(
            Icons.card_giftcard,
            color: AppTheme.primaryColor,
          ),
        ),
        Row(
//Como tenemos componentes dentro de un Row, con el mainAxis podemos alinear los componetes
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
//Esta es un fomra de hacer botones con texto
            TextButton(onPressed: () {}, child: Text("Cancel")),
            TextButton(onPressed: () {}, child: Text("ok"))
          ],
        )
      ]),
    );
  }
}
