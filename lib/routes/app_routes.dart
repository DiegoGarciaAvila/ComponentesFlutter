
import 'package:componentes_flutter/models/models.dart';
import 'package:componentes_flutter/screen/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initailRoute = 'home';


//Este es un arreglo que contiene las rutas de la aplicacion
  static final menuoption=<MenuOptions>[
//TODO: borrar home
    MenuOptions(route:'home' ,name:'Home Screen' ,screen: const HomeScreen() ,icon: Icons.home ),
    MenuOptions(route:'alert' ,name:'Alert Screen' ,screen: const AlertScreen() ,icon: Icons.alarm ),
    MenuOptions(route:'card' ,name:'Card Screen' ,screen: const CardScreen() ,icon:Icons.message ),
    MenuOptions(route:'listview1' ,name:'ListView1 Screen' ,screen: const Listview1Screen() ,icon: Icons.list ),
    MenuOptions(route:'listview2' ,name:'ListView2 Screen' ,screen: const Listview2Screen() ,icon: Icons.featured_play_list ),
    MenuOptions(route:'circulAvatar' ,name:'CirculeAvatar Screen' ,screen: const CircleAvatarScreen() ,icon: Icons.account_box_sharp ),
    MenuOptions(route:'animation' ,name:'Animation Screen' ,screen: const AnimationScreen() ,icon: Icons.animation ),
    MenuOptions(route:'input' ,name:'Input Screen' ,screen: const InputScreen() ,icon: Icons.input_rounded ),
    MenuOptions(route:'slider' ,name:'Slider Screen' ,screen: const SliderScreen() ,icon: Icons.slideshow),

  ];

//Con este metodo podemos recorrer el arreglo que tiene las rutas, y regresa
// la ruta que se esta presionando
  static Map<String, Widget Function(BuildContext)> getMenuOptionsRoutes(){
    Map<String, Widget Function(BuildContext)> appRoute ={};
     for (final option in menuoption){
       appRoute.addAll({
         option.route: (BuildContext context) => option.screen
       });
     }
     return appRoute;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        return const HomeScreen();
      },
    );
  }
}
