import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter/material.dart' hide Router;

import 'app_theme.dart';
import 'data/get_it.dart';
import 'router.gr.dart' as app_router;
void main() {
  registerGetIt();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final _appRouter = app_router.FlutterRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Local & Loyal',
      theme: buildLightTheme(),
      home: MaterialApp.router(
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate()),
    );
  }
}


