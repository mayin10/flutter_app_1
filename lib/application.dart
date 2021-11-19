import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_app_1/pages/home/index.dart';
import 'package:flutter_app_1/pages/login.dart';
import 'package:flutter_app_1/pages/routes.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    return MaterialApp(
      home: HomePage(),
      onGenerateRoute: router.generator,
    );
  }
}
