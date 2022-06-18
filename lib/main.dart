import 'package:ducks/pages/duck_details_page.dart';
import 'package:ducks/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'models/duck.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }

  final _router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => HomePage()),
    GoRoute(
      path: '/details',
      builder: (context, state) => DuckDetailsPage(duck: state.extra as Duck),
    ),
  ]);
}
