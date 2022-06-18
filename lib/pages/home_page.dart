import 'package:ducks/data/ducks_description.dart';
import 'package:ducks/widgets/duck_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../models/duck.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ducks"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: ducks.length,
            itemBuilder: (context, index) => DuckListItem(duck: ducks[index])));
  }
}
