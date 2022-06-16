import 'package:ducks/widgets/duck_list_item.dart';
import 'package:flutter/material.dart';

import '../models/duck_model.dart';

class DuckListPage extends StatelessWidget {
  const DuckListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ducks = DuckModel.ducks;

    return Scaffold(
      appBar: AppBar(
        title: Text("Ducks"),
      ),
      body: ListView.builder(
        itemCount: ducks.length,
        itemBuilder: (context, index) => DuckListItem(
          ducks[index],
        ),
      ),
    );
  }
}
