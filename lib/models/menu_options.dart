import 'package:flutter/material.dart';

//Se encapsulan los datos que se usan para el listview

class MenuOptions {
  final String route;
  final String name;
  final IconData icon;
  final Widget screen;

  MenuOptions({
       required this.route,
      required this.name,
      required this.icon,
      required this.screen});
}
