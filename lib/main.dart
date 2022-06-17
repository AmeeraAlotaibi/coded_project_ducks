import 'package:ducks/models/duck_model.dart';
import 'package:ducks/pages/duck_details_page.dart';
import 'package:ducks/pages/duck_list_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}

final _router = GoRouter(routes: [
  GoRoute(path: "/", builder: (_, state) => DuckListPage()),
  GoRoute(
      path: "/details",
      builder: (_, state) => DuckDetailsPage(
            duck: state.extra as DuckModel,
          )),
]);
