import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  final scafoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get key => scafoldKey;
}
